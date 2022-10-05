class PlantSample < ApplicationRecord
  has_many :seeds_plant_samples
  has_many :seeds, through: :seeds_plant_samples
  belongs_to :population

  def seed
    seeds.length == 1 ? seeds.first : seeds
  end

  def accession
    "#{population.name}-#{seeds.first.accession}"
  end

  def generation
    seeds.length == 1 ? seed.generation : nil
  end
end
