# frozen_string_literal: true

class Population < ApplicationRecord
  has_many :seeds
  has_one :location
  has_one :leaf

  def label
    "#{name}-#{subpopulation}"
  end
end
