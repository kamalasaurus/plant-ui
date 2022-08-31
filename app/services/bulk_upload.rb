# frozen_string_literal: true

require 'csv'

class BulkUpload
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
    name = "#{DateTime.now.strftime '%Y_%m_%d'}_upload"
    File.binwrite(Rails.root.join('public', 'uploads', name), @file)
  end

  def parse # rubocop:disable Metrics/AbcSize
    CSV.parse(@file, headers: true, header_converters: %i[downcase symbol]) do |row|
      seedbox, population, seed, tube = nil
      h = row.to_h
      ActiveRecord::Base.transaction do
        seedbox = Seedbox.find_or_create_by(
          name: h[:seedbox]
        )
        population = Population.find_or_create_by(
          name: h[:popid1],
          subpopulation: h[:popid2]
        )
        seed = Seed.find_or_create_by(
          species: SPECIES[h[:species]],
          generation: h[:generation],
          accession: h[:accid],
          population_id: population.id
        )
        tube = Tube.find_or_create_by(
          seed_id: seed.id,
          seedbox_id: seedbox.id,
          position: h[:position],
          volume: h[:quantity_ml],
          count: check(h[:quantity_seeds])
        )
      rescue StandardError => e
        puts e
        puts row.to_h
        @errors.push([e, row])
      end
    end
  end
end
