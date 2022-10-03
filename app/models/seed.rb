# frozen_string_literal: true

class Seed < ApplicationRecord
  belongs_to :population
  belongs_to :parent, class_name: 'Seed', optional: true

  has_many :tubes
  has_many :children, class_name: 'Seed', foreign_key: 'parent_id'

  has_many: :plant_samples

  def label
    "#{species}-#{population.label}-#{accession}"
  end

  def abbreviation
    "#{trunc_name.upcase}-#{population.label.upcase}-#{accession}"
  end

  private

  def trunc_name
    species.split('-')
           .map.with_index do |stem, i|
      i.zero? ? stem[0, 1] : stem[0, 2]
    end
           .join
  end
end
