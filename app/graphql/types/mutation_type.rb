# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_population, mutation: Mutations::CreatePopulation
    field :create_species, mutation: Mutations::CreateSpecies
    field :create_seedbox, mutation: Mutations::CreateSeedbox
    field :create_accession, mutation: Mutations::CreateAccession
    field :crate_location, mutation: Mutations::CreateLocation
    field :create_root_community, mutation: Mutations::CreateRootCommunity
  end
end
