# frozen_string_literal: true

class Population < ApplicationRecord
  has_many :seeds
  has_one :location
  has_one :leaf_community
  has_one :root_community
  has_one :plant_neighborhood

  def label
    "#{name}-#{subpopulation}"
  end
end
