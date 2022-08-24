# frozen_string_literal: true

class Seed < ApplicationRecord
  belongs_to :population
  belongs_to :parent, class_name: 'Seed', optional: true

  has_many :tubes
  has_many :children, class_name: 'Seed', foreign_key: 'parent_id'

  def label
    "#{species}-#{population.name}-#{population.subpopulation}-#{accession}"
  end
end
