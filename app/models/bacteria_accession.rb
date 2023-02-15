class BacteriaAccession < ApplicationRecord
  belongs_to :bacteria_population
  belongs_to :species
  belongs_to :source_species, class_name: 'Seed'
end
