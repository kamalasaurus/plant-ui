# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_population, mutation: Mutations::CreatePopulation, description: "create a population entry"
    field :create_species, mutation: Mutations::CreateSpecies, description: "create a species entry"
    field :create_seedbox, mutation: Mutations::CreateSeedbox, description: "create a seedbox entry"
    field :create_accession, mutation: Mutations::CreateAccession, description: "create a accession entry"
    field :create_location, mutation: Mutations::CreateLocation, description: "create a location entry"
    field :create_root_community, mutation: Mutations::CreateRootCommunity, description: "create a root community entry"
    field :create_leaf_community, mutation: Mutations::CreateLeafCommunity, description: "create a leaf community entry"
    field :create_plant_neighborhood, mutation: Mutations::CreatePlantNeighborhood, description: "create a plant neighborhood entry"
    field :create_cytometry_reading, mutation: Mutations::CreateCytometryReading, description: "create a cytometry reading entry"
    field :create_seed, mutation: Mutations::CreateSeed, description: "create a seed entry"
    field :create_plant_sample, mutation: Mutations::CreatePlantSample, description: "create a plant sample entry"
    field :create_tube, mutation: Mutations::CreateTube, description: "create a tube entry"
  end
end
