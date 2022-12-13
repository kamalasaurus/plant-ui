# frozen_string_literal: true

class Population < ApplicationRecord
  has_many :accessions
  has_many :seeds, through: :accessions
  has_many :plant_samples, through: :accessions
  has_one :location
  has_one :leaf_community
  has_one :root_community
  has_one :plant_neighborhood

  def self.get(dasherized_string)
    population_name, subpopulation, * = dasherized_string.split('-')
    Population.find_by(population_name: population_name, subpopulation: subpopulation)
  end

  def name
    "#{population_name}-#{subpopulation}"
  end
end
