class Species < ApplicationRecord
  has_many :seeds
  has_many :plant_samples
end
