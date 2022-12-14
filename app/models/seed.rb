# frozen_string_literal: true

class Seed < ApplicationRecord
  belongs_to :accession
  belongs_to :species
  delegate :population, to: :accession
  
  belongs_to :parent, class_name: 'Seed', optional: true

  has_many :tubes
  has_many :children, class_name: 'Seed', foreign_key: 'parent_id'

  has_many :seeds_plant_samples
  has_many :plant_samples, through: :seeds_plant_samples

  def label
    "#{species.name}-#{accession.name}"
  end

  def abbreviation
    "#{species.abbreviation}-#{accession.name}"
  end
end
