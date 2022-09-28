# frozen_string_literal: true

require 'csv'

module LeafUpload
  def self.parse(file)
    CSV.parse(file, headers: true, header_converters: %i[downcase]) do |row|
      h = row.to_h.deep_symbolize_keys!
      name, subpopulation = h[:population].split('-')

      transform = h.keys.select { |key, _| /^leaf_otu/ =~ key.to_s }
        .map do |key, val|
          number = key.match(/\d+$/).to_s.to_i
          val = :"leaf_otu_#{number}"
          [key, val]
        end
        .to_h

      other_transform = h.keys.selet { |key, _| /_leaf$/ =~ key.to_s }
        .map do |key, val|
          name = val.split('_').rotate(-1)
          name[1], name[2] = name[2], name[1]
          [key, name.join('_').to_sym]
        end
        .to_h

      attrs = h
        .select { |key, _| /^leaf_otu/ =~ key.to_s }
        .transform_keys(transform)
        .transform_values do |value|
          if value == "1"
            true
          elsif value == "0"
            false
          else
            nil
          end

        end

      other_attrs = has_many
        .select { |key, _| /_leaf$/ =~ key.to_s }
        .transform_keys(other_transform)

      # Frachon 2019, supplementary dataset 5, MBE
      ActiveRecord::Base.transaction do
        population_id = Population.create_or_find_by(name: name, subpopulation: subpopulation).id
        Leaf.upsert(attrs.merge(other_attrs).merge({population_id: population_id}))
      rescue StandardError => e
        puts e
        puts h
      end
    end
  end
end