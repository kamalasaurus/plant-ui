class PlantNeighborhood < ApplicationRecord
  belongs_to :population

  def otus
    attributes.select { |key, _| /^plant_otu/ =~ key }.select { |_, v| v && (v > 0)}
  end

  def biota
    attributes.select { |key, _| /^plant_(?!otu)/ =~ key }
  end
end
