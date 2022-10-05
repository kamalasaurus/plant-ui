# frozen_string_literal: true

class Accession < ApplicationRecord
  belongs_to :population
  has_many :seeds
  has_many :plant_samples
  # has_many :flow_cytometry

  # assume format AMBR-A-01
  def self.get(dasherized_string)
    population_name, subpopulation, accession_str = dasherized_string.split('-')
    population_id = Population.find_by(population_name: population_name,\
      subpopulation: subpopulation)&.id
    accession_number = accession_str.to_i
    Accession.find_by(population_id: population_id, accession_number: accession_number)
  end

  def name
    "#{population.name}-#{pad(accession_number)}"
  end

  private

  def pad(int)
    int.to_s.rjust(2, '0')
  end
end
