# frozen_string_literal: true

require 'csv'

class BacteriaTubeUpload
  private_class_method :new
  attr_reader :errors

  SPECIES = {
  }.freeze

  def initialize(file)
    @errors = []
    @file = file
    copy
    parse
  end

  def self.parse(file)
    new(file)
  end

  def success?
    @errors.empty?
  end

  private

  def check(str)
    str == 'NA' ? nil : str
    #empty
  end

  def copy
    return if Rails.env.production?

    name = "#{DateTime.now.strftime '%Y_%m_%d'}_upload.csv"
    File.binwrite(Rails.root.join('public', 'uploads', name), @file)
  end

  def create_or_update_species(h)
    genus, species = SPECIES[h[:species]].split('-')
    Species.upsert({
                     genus:,
                     species:
                   }, unique_by: %i[genus species])
    Species.find_by(genus:, species:)
  end

  # def create_or_update_seedbox(h)
  #   Seedbox.upsert({
  #                    name: h[:seedbox]
  #                  }, unique_by: :name)
  #   Seedbox.find_by(name: h[:seedbox])
  # end

  # def create_or_update_population(h)
  #   Population.upsert({
  #                       population_name: h[:popid1].upcase,
  #                       subpopulation: h[:popid2].upcase
  #                     }, unique_by: %i[population_name subpopulation])
  #   Population.find_by(population_name: h[:popid1], subpopulation: h[:popid2])
  # end

  # def create_or_update_accession(h, population)
  #   Accession.upsert({
  #                      accession_number: h[:accid].to_i,
  #                      population_id: population.id
  #                    }, unique_by: %i[population_id accession_number])
  #   Accession.find_by(population_id: population.id, accession_number: h[:accid])
  # end

  # def create_or_update_seed(h, accession, species)
  #   Seed.upsert({
  #                 species_id: species.id,
  #                 generation: h[:generation],
  #                 accession_id: accession.id
  #               }, unique_by: :uniqueness_index)
  #   Seed.find_by(
  #     species_id: species.id,
  #     generation: h[:generation],
  #     accession_id: accession.id
  #   )
  # end

  # def create_or_update_tube(h, seed, seedbox)
  #   Tube.upsert({
  #                 seed_id: seed.id,
  #                 seedbox_id: seedbox.id,
  #                 position: h[:position],
  #                 volume: h[:quantity_ml],
  #                 count: check(h[:quantity_seeds])
  #               }, unique_by: %i[seedbox_id position])
  #   Tube.find_by(
  #     seed_id: seed.id,
  #     seedbox_id: seedbox.id,
  #     position: h[:position],
  #     volume: h[:quantity_ml],
  #     count: check(h[:quantity_seeds])
  #   )
  # end

  def parse
    CSV.parse(@file, headers: true, header_converters: %i[downcase symbol]) do |row|
      bacteria_population, bacteria_location, bacteria_accession, \
      bacteria_tube, bacteria_box, freezer_rack, freezer, \
      species, source_species = nil
      h = row.to_h
      ActiveRecord::Base.transaction do
        species = create_or_update_species(h)
        source_species = create_or_update_source_species(h)
        freezer = create_or_update_freezer(h)
        freezer_rack = create_or_update_freezer_rack(h, freezer)
        bacteria_box = create_or_update_bacteria_box(h, freezer_rack)
        bacteria_population = create_or_update_bacteria_population(h)
        bacteria_location = create_or_update_bacteria_location(h, bacteria_population)
        bacteria_accession = create_or_update_bacteria_accession(h, bacteria_populationk \
          species, source_species)
        bacteria_tube = create_or_update_bacteria_tube(h, bacteria_accession)
      rescue StandardError => e
        puts e
        puts h
        @errors.push([e, row])
      end
    end
  end
end
