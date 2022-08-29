# frozen_string_literal: true

class Seed < ApplicationRecord
  belongs_to :population
  belongs_to :parent, class_name: 'Seed', optional: true

  has_many :tubes
  has_many :children, class_name: 'Seed', foreign_key: 'parent_id'

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
        if i.zero? then stem[0,1] else stem[0,2] end
      end
      .join
  end
end
