# frozen_string_literal: true

class Population < ApplicationRecord
  has_many :seeds
  has_many :plant_samples
  has_one :location
  has_one :leaf_community
  has_one :root_community
  has_one :plant_neighborhood

  def name
    "#{population_name}-#{subpopulation}"
  end
end
