# frozen_string_literal: true

class Species < ApplicationRecord
  has_many :seeds
  has_many :plant_samples
  has_many :subspecies

  def name
    "#{genus}-#{species}"
  end

  def abbreviation
    "#{genus[0]}#{species[0, 2]}".upcase
  end
end
