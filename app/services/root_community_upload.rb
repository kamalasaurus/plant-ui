# frozen_string_literal: true

require 'csv'

module RootCommunityUpload
  def self.parse(file)
    CSV.parse(file, headers: true, header_converters: %i[downcase]) do |row|
      h = row.to_h.deep_symbolize_keys!
      population_name, subpopulation = h[:population].split('-')

      transform = h.keys.select { |key, _| /^root_otu/ =~ key.to_s }
                   .to_h do |key, _|
        number = key.match(/\d+$/).to_s.to_i
        val = :"root_otu_#{number}"
        [key, val]
      end

      other_transform = h.keys.select { |key, _| /_root$/ =~ key.to_s }
                         .to_h do |key|
        split_key = key.to_s.split('_').rotate(-1)
        split_key[1], split_key[2] = split_key[2], split_key[1]
        [key, split_key.join('_').to_sym]
      end

      attrs = h
              .select { |key, _| /^root_otu/ =~ key.to_s }
              .transform_keys(transform)
              .transform_values do |value|
        case value
        when '1'
          true
        when '0'
          false
        end
      end

      other_attrs = h
                    .select { |key, _| /_root$/ =~ key.to_s }
                    .transform_keys(other_transform)

      # Frachon 2019, supplementary dataset 5, MBE
      ActiveRecord::Base.transaction do
        population_id = Population.create_or_find_by(population_name:, subpopulation:).id
        RootCommunity.upsert(attrs.merge(other_attrs).merge({ population_id: }))
      rescue StandardError => e
        puts e
        puts h
      end
    end
  end
end
