# frozen_string_literal: true

require 'csv'

class TubeUpload
  private_class_method :new
  attr_reader :errors

  SPECIES = {
    'Ath' => 'arabidopsis-thaliana',
    'Chi' => 'cardamine-hirsuta',
    'Dve' => 'draba-verna'
  }.freeze

  def initialize(file)
    @errors = []
    @file = file
    copy
    parse
  end

  def self.parse(file)
    new(file)
    # what to do about temp boxes?  Just store as box?
    # store seed parent relationships and do a second pass to add them!!
  end

  def success?
    @errors.empty?
  end

  private

  def check(str)
    str == 'NA' ? nil : str
  end

  def copy
    name = "#{DateTime.now.strftime '%Y_%m_%d'}_upload.csv"
    File.binwrite(Rails.root.join('public', 'uploads', name), @file)
  end

  def create_or_update_seedbox(h)
    Seedbox.upsert({
      name: h[:seedbox]
    }, unique_by: :name)
    Seedbox.find_by(name: h[:seedbox])
  end

  def create_or_update_population(h)
    Population.upsert({
      population_name: h[:popid1].upcase,
      subpopulation: h[:popid2].upcase
    }, unique_by: %i[population_name subpopulation])
    Population.find_by(population_name: h[:popid1], subpopulation: h[:popid2])
  end

  def create_or_update_accession(h, population)
    Accession.upsert({
      accession_number: h[:accid].to_i,
      population_id: population.id
    }, unique_by: %i[population_id accession_number])
    Accession.find_by(population_id: population.id, accession_number: h[:accid])
  end

  def create_or_update_seed(h, accession)
    Seed.upsert({
      species: SPECIES[h[:species]],
      generation: h[:generation],
      accession_id: accession.id
    }, unique_by: :uniqueness_index)
    Seed.find_by(
      species: SPECIES[h[:species]],
      generation: h[:generation],
      accession_id: accession.id
    )
  end

  def create_or_update_tube(h, seed, seedbox)
    Tube.upsert({
      seed_id: seed.id,
      seedbox_id: seedbox.id,
      position: h[:position],
      volume: h[:quantity_ml],
      count: check(h[:quantity_seeds])
    }, unique_by: %i[seedbox_id position])
    Tube.find_by(
      seed_id: seed.id,
      seedbox_id: seedbox.id,
      position: h[:position],
      volume: h[:quantity_ml],
      count: check(h[:quantity_seeds])
    )
  end

  def parse # rubocop:disable Metrics/AbcSize
    CSV.parse(@file, headers: true, header_converters: %i[downcase symbol]) do |row|
      seedbox, population, seed, tube = nil
      h = row.to_h
      ActiveRecord::Base.transaction do
        seedbox = create_or_update_seedbox(h)
        population = create_or_update_population(h)
        accessoin = create_or_update_accession(h, population)
        seed = create_or_update_seed(h, accession)
        tube = create_or_update_tube(h, seed, seedbox)
      rescue StandardError => e
        puts e
        puts h
        @errors.push([e, row])
      end
    end
  end
end
