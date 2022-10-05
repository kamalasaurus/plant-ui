class PlantSample < ApplicationRecord
  has_many :seeds_plant_samples
  has_many :seeds, through: :seeds_plant_samples
  belongs_to :accession
  delegate :population, to: :accession

  def seed
    seeds.length == 1 ? seeds.first : seeds
  end

  def generation
    seeds.length == 1 ? seed.generation : nil
  end
end
