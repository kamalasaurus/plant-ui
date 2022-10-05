# frozen_string_literal: true

require 'csv'

module PlantSampleUpload

  SPECIES = {
    'Eve_' => 'draba-verna'.freeze
  }.freeze

  def self.parse_freeze_dried(file)
    col_sep = (file =~ /\t/ ? "\t" : ",")
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol], col_sep: col_sep) do |row|
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
        .values.map(&:to_s)
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
      
      attrs[:species] = PlantSampleUpload::SPECIES[attrs[:species]]

      name, subpopulation, accession = h[:individual].split('-')
      generation = h[:label_g]&.to_s&.match(/(?<generation>\d+)/)&.[](:generation)&.to_i
      accession = accession.rjust(2, '0')

      ActiveRecord::Base.transaction do
        population_id = Population.find_by(name: name, subpopulation: subpopulation).id
        full_attrs = attrs.merge({population_id: population_id})
        PlantSample.upsert(full_attrs)

        # the full_attrs do not guarantee uniqueness
        # this call to last would be unsafe in multi-threaded ingestion
        # but since single-threaded, it's probably fine for this scale
        plant_sample_id = PlantSample.where(full_attrs).last.id

        seed_attrs = {
          species: attrs[:species],
          population_id: population_id,
          accession: accession
        }.tap do |hash|
          hash[:generation] = generation if generation.present?
        end

        seeds = Seed.where(seed_attrs)
        seeds.each do |seed|
            SeedsPlantSample.upsert({
              seed_id: seed.id,
              plant_sample_id: plant_sample_id
            })
          end
        if seeds.length == 0
          puts 'NO SEEDS'
          puts SeedsPlantSample.where(plant_sample_id: plant_sample_id).map(&:id).join(' ')
          puts plant_sample_id
        end
      rescue StandardError => e
        puts e
        puts seed_attrs
        puts attrs
      end
    end
  end

  def self.parse_minus_80(file)
    col_sep = (file =~ /\t/ ? "\t" : ",")
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol], col_sep: col_sep) do |row|
      h = row.to_h

      label = h
        .slice(*%i[
          accession
          dedicated_box
          dedicated_position
        ])
        .values.map(&:to_s)
        .join('-')

      attrs = h
        .reject { |k, v| k == :discarded && v == 'yes' }
        .slice(*%i[
          tray_id
          tray_rep
          row
          column
          nb_samples
        ])
        .transform_keys({
          tray_id: :accession_tray,
          tray_rep: :replication_tray,
          nb_samples: :quantity
        })
        .merge({
          species: 'draba-verna',
          label: label,
          storage_method: 'minus-80'
        })
      
      name, subpopulation, accession = h[:accession].split('-')
      accession = accession.rjust(2, '0')

      ActiveRecord::Base.transaction do
        population_id = Population.find_by(name: name, subpopulation: subpopulation).id
        full_attrs = attrs.merge({population_id: population_id})
        PlantSample.upsert(full_attrs)

        # the full_attrs do not guarantee uniqueness
        # this call to last would be unsafe in multi-threaded ingestion
        # but since single-threaded, it's probably fine for this scale
        plant_sample_id = PlantSample.where(full_attrs).last.id

        seed_attrs = {
          species: attrs[:species],
          population_id: population_id,
          accession: accession
        }

        seeds = Seed.where(seed_attrs)
        seeds.each do |seed|
            SeedsPlantSample.upsert({
              seed_id: seed.id,
              plant_sample_id: plant_sample_id
            })
          end
        if seeds.length == 0
          puts 'NO SEEDS'
          puts SeedsPlantSample.where(plant_sample_id: plant_sample_id).map(&:id).join(' ')
          puts plant_sample_id
        end
      rescue StandardError => e
        puts e
        puts seed_attrs
        puts attrs
      end
    end
    end
  end

  def self.parse_silica(file)
    col_sep = (file =~ /\t/ ? "\t" : ",")
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol], col_sep: col_sep) do |row|
      h = row.to_h

    end
  end
end