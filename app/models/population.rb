# frozen_string_literal: true

class Population < ApplicationRecord
  has_many :seeds
  has_one :location
  has_one :leaf
  has_one :root

  def label
    "#{name}-#{subpopulation}"
  end
end
