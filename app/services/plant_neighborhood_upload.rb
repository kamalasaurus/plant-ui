# frozen_string_literal: true

require 'csv'

module PlantNeighborhoodUpload
  def self.parse(file)
    CSV.parse(file, headers: true, header_converters: %i[downcase]) do |row|
      h = row.to_h.deep_symbolize_keys!
      name, subpopulation = h[:population].split('-')

      transform = h.keys.select { |key, _| /^plant_otu/ =~ key.to_s }
        .map do |key, val|
          number = key.match(/\d+$/).to_s.to_i
          val = :"plant_otu_#{number}"
          [key, val]
        end
        .to_h

      attrs = h
        .select { |key, _| /^plant_otu/ =~ key.to_s }
        .transform_keys(transform)

      other_attrs = h
        .select { |key, _| /^plant_(?!otu)/ =~ key.to_s }

      # Frachon 2019, supplementary dataset 5, MBE
      ActiveRecord::Base.transaction do
        population_id = Population.create_or_find_by(name: name, subpopulation: subpopulation).id
        PlantNeighborhood.upsert(attrs.merge(other_attrs).merge({population_id: population_id}))
      rescue StandardError => e
        puts e
        puts h
      end
    end
  end
end