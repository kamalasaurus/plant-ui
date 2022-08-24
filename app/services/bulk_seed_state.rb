# frozen_string_literal: true
require 'csv'

module BulkSeedState
  SPECIES = {
    'Ath' => 'arabidopsis-thaliana',
    'Chi' => 'cardamine-hirsuta',
    'Dve' => 'draba-verna'
  }.freeze

  def self.upload(file)
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol]) do |row|
      seedbox, population, seed, bin = nil
      h = row.to_h
      binding.pry
      ActiveRecord::Base.transaction do 
        seedbox = Seedbox.upsert(name: h[:seedbox])
        population = Population.upsert(name: h[:popid1], subpopulation: h[:popid2])
        seed = Seed.upsert(species: SPECIES[h[:species]], generation: h[:generation], accession: h[:accid], population_id: population.id)
        bin = Bin.upsert(seed_id: seed.id, seedbox: seedbox.id, location: h[:position], quantity: h[:quantity_seeds])
      end
      # migrate bin to have seedbox reference, not string
      # migrate bin to be called tube
      # migrate bin to change location to position
      # migrate bin to have volume
      # migrate bin to have quantity

      # store seed parent relationships and do a second pass to add them!!
    end
  end
end
