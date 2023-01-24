# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_population, mutation: Mutations::CreatePopulation
    field :create_species, mutation: Mutations::CreateSpecies
  end
end
