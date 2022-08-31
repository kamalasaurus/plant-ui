# frozen_string_literal: true

class Population < ApplicationRecord
  has_many :seeds

  def label
    "#{name}-#{subpopulation}"
  end
end
