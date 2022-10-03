# frozen_string_literal: true

require 'csv'

module PlantSampleUpload
  def self.parse_freeze_dried(file)
    col_sep = (file =~ /\t/ ? "\t" : ",")
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol], col_sep: col_sep) do |row|

      SPECIES = {
        'Eve_' => 'draba-verna'
      }.freeze

      row.to_h

      binding.pry
      # name, subpopulation = h[:population].split('-')

      # transform = h.keys.select { |key, _| /^plant_otu/ =~ key.to_s }
      #   .map do |key, val|
      #     number = key.match(/\d+$/).to_s.to_i
      #     val = :"plant_otu_#{number}"
      #     [key, val]
      #   end
      #   .to_h

      # attrs = h
      #   .select { |key, _| /^plant_otu/ =~ key.to_s }
      #   .transform_keys(transform)

      # other_attrs = h
      #   .select { |key, _| /^plant_(?!otu)/ =~ key.to_s }

      # ActiveRecord::Base.transaction do
      #   # seed_id = Population.create_or_find_by().id
      #   PlantSample.upsert(attrs.merge(other_attrs).merge({seed_id: seed_id}))
      # rescue StandardError => e
      #   puts e
      #   puts h
      # end
    end
  end

  def self.parse_minus_80(file)
    col_sep = (file =~ /\t/ ? "\t" : ",")
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol], col_sep: col_sep) do |row|
    end
  end

  def self.parse_silica(file)
    col_sep = (file =~ /\t/ ? "\t" : ",")
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol], col_sep: col_sep) do |row|
    end
  end
end