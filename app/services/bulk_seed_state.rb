# frozen_string_literal: true
require 'csv'

module BulkSeedState
  SPECIES = {
    'Ath' => 'arabidopsis-thaliana',
    'Chi' => 'cardamine-hirsuta',
    'Dve' => 'draba-verna'
  }.freeze

  def self.check(str)
    if str == "NA" then nil else str end
  end

  def self.get_id(result)
    result.pluck('id').pop
  end

  def self.upload(file)
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol]) do |row|
      seedbox, population, seed, bin = nil
      h = row.to_h
      ActiveRecord::Base.transaction do 
        seedbox = Seedbox.upsert({name: h[:seedbox]})
        population = Population.upsert({
          name: h[:popid1],
          subpopulation: h[:popid2]
        })
        seed = Seed.upsert({
          species: SPECIES[h[:species]],
          generation: h[:generation],
          accession: h[:accid],
          population_id: self.get_id(population)
        })
        tube = Tube.upsert({
          seed_id: self.get_id(seed),
          seedbox_id: self.get_id(seedbox),
          position: h[:position],
          volume: h[:quantity_ml],
          count: self.check(h[:quantity_seeds])
        })
      rescue
        puts row.to_s
      end
    end
    # what to do about temp boxes?  Just store as box?
    # store seed parent relationships and do a second pass to add them!!
  end
end
