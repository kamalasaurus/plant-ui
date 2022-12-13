class Species < ApplicationRecord
  has_many :seeds
  has_many :plant_samples

  def name
    "#{genus}-#{species}"
  end

  def abbreviation
    "#{genus[0]}#{species[0,2]}"
  end
end
