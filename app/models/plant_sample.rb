class PlantSample < ApplicationRecord
  has_and_belongs_to_many :seed
  belongs_to :population

  def seed
    seeds.length == 1 ? seeds.pop : seeds
  end

  def accession
    "#{population.label}-#{seeds.first.accession}"
  end

  def generation
    seeds.length == 1 ? seed.generation : nil
  end
end
