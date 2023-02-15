class BacteriaAccession < ApplicationRecord
  belongs_to :bacteria_population
  belongs_to :duplicate
  belongs_to :species
  belongs_to :source_species
end
