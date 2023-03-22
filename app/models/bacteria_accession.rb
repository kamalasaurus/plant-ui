class BacteriaAccession < ApplicationRecord
  belongs_to :bacteria_population
  belongs_to :species
  belongs_to :source_species, class_name: 'Species'

  has_many :bacteria_tubes
end
