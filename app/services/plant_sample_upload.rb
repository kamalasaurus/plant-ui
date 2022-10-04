# frozen_string_literal: true

require 'csv'

module PlantSampleUpload
  def self.parse_freeze_dried(file)
    col_sep = (file =~ /\t/ ? "\t" : ",")
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol], col_sep: col_sep) do |row|

      SPECIES = {
        'Eve_' => 'draba-verna'
      }.freeze

      h = row.to_h

      label_keys = %i[
        label_p1
        label_p2
        label_p3
        label_p4
        label_g
        label_p5
        cohort
      ]

      label = h
        .select { |key, _| label_keys.include? key }
        .values.map(:to_s)
        .join("-")

      attrs = h
        .slice(*%i[
          species
          amount_plant_material
        ])
        .transform_keys({
          amount_plant_material: :quantity
        })
        .merge({
          label: label,
          storage_method: 'freeze-dried'
        })
      
      attrs[:species] = SPECIES[attrs[:species]]

      name, subpopulation, accession = h[:individual].split('-')
      generation = h[:label_g].match(/(?<generation>\d)/)[:generation]

      ActiveRecord::Base.transaction do
        population_id = Population.find_by(name: name, subpopulation: subpopulation).id
        full_attrs = attrs.merge({population_id: population_id})
        PlantSample.upsert(full_attrs)
        plant_sample_id = PlantSample.find_by(full_attrs).id
        Seed.where(population_id: population_id, accession: accession, generation: generation)
          .each do |seed|
            SeedsPlantSamples.upsert({
              seed_id: seed.id,
              plant_sample_id: plant_sample_id
            })
          end
      rescue StandardError => e
        puts e
        puts h
      end
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