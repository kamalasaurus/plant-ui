# frozen_string_literal: true

class SpeciesResolver < BaseResolver
  type [Types::SpeciesType], null: false

  scope { Species.all }

  option(:genus, type: String, description: 'select by genus') do |scope, value|
    scope.where(genus: value)
  end

  option(:species, type: Integer, description: 'select by species name') do |scope, value|
    scope.where(species: value)
  end

  option(:multiple_genus, type: [String], description: 'select by multiple genuses') do |scope, value|
    scope.where(genus: value)
  end

  option(:multiple_species, type: [String], description: 'select by multiple species') do |scope, value|
    scope.where(species: value)
  end
end
