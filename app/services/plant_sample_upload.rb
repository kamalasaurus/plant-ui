# frozen_string_literal: true

require 'csv'

module PlantSampleUpload

  SPECIES = {
    'Eve_' => 'draba-verna'.freeze
  }.freeze

  ALPH = ('A'..'Z').to_a

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

      generation = h[:label_g]&.to_s&.match(/(?<generation>\d+)/)&.[](:generation)&.to_i

      ActiveRecord::Base.transaction do
        accession_id = Accession.get(h[:individual])&.id
        
        full_attrs = attrs.merge({accession_id: accession_id})
        PlantSample.upsert(full_attrs)

        # the full_attrs do not guarantee uniqueness
        # this call to last would be unsafe in multi-threaded ingestion
        # but since single-threaded, it's probably fine for this scale
        plant_sample_id = PlantSample.where(full_attrs).last.id

        seed_attrs = {
          species: attrs[:species],
          accession_id: accession_id
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
      

      ActiveRecord::Base.transaction do
        accession_id = Accession.get(h[:accession])&.id
        full_attrs = attrs.merge({accession_id: accession_id})
        PlantSample.upsert(full_attrs)

        # the full_attrs do not guarantee uniqueness
        # this call to last would be unsafe in multi-threaded ingestion
        # but since single-threaded, it's probably fine for this scale
        plant_sample_id = PlantSample.where(full_attrs).last.id

        seed_attrs = {
          species: attrs[:species],
          accession_id: accession_id
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

  def self.parse_silica(file)
    col_sep = (file =~ /\t/ ? "\t" : ",")
    CSV.parse(file, headers: true, header_converters: %i[downcase symbol], col_sep: col_sep) do |row|
      h = row.to_h

      label = h
        .slice(*%i[
          individual
          plate
          nos
        ])
        .values.map(&:to_s)
        .join('-')


        attrs = h
          .reject { |k, v| k == :discarded && v == 'yes' }
          .slice(*%i[
            flat
            trayid
            platerow
            platecol
            plant_material_available
          ])
          .transform_keys({
            flat: :accession_tray,
            trayid: :replication_tray,
            platerow: :row,
            platecol: :column,
            plant_material_available: :quantity,
          })
          .merge({
            species: 'draba-verna',
            label: label,
            storage_method: 'silica'
          })
          .transform_values { |v| (v == 'Placeholder' || v == 'NA') ? nil : v }
          .tap do |hash|
            flat_idx = (hash[:accession_tray]&.match(/(?<flat>\d+)/)&.[](:flat)&.to_i)
            hash[:accession_tray] = ALPH[flat_idx - 1]
            tray_idx = (hash[:replication_tray]&.match(/(?<rep>\d+)/)&.[](:rep)&.to_i)
            hash[:replication_tray] = tray_idx
          end
          
        attrs[:quantity] = 2 if attrs[:quantity].nil?

        ActiveRecord::Base.transaction do
          accession_id = Accession.get(h[:individual])&.id
          full_attrs = attrs.merge({accession_id: accession_id})
          PlantSample.upsert(full_attrs)
  
          # the full_attrs do not guarantee uniqueness
          # this call to last would be unsafe in multi-threaded ingestion
          # but since single-threaded, it's probably fine for this scale
          plant_sample_id = PlantSample.where(full_attrs).last.id
  
          seed_attrs = {
            species: attrs[:species],
            accession_id: accession_id
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