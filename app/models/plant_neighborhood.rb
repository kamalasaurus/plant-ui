# frozen_string_literal: true

class PlantNeighborhood < ApplicationRecord
  belongs_to :population

  def otus
    attributes.select { |key, _| /^plant_otu/ =~ key }.select { |_, v| v&.positive? }
  end

  def biota
    attributes.select { |key, _| /^plant_(?!otu)/ =~ key }
  end
end
