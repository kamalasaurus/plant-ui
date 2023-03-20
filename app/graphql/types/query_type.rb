# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :accessions, resolver: AccessionResolver, description: 'Return a list of accessions'
    field :cytometry_readings, resolver: CytometryReadingResolver, description: 'Return a list of cytometry readings'
    field :leaf_communities, resolver: LeafCommunityResolver, description: 'Return a list of leaf communities'
    field :locations, resolver: LocationResolver, description: 'Return a list of locations'
    field :plant_neighborhoods, resolver: PlantNeighborhoodResolver, description: 'Return a list of plant neighborhoods'
    field :plant_samples, resolver: PlantSampleResolver, description: 'Return a list of plant samples'
    field :populations, resolver: PopulationResolver, description: 'Return a list of populations'
    field :root_communities, resolver: RootCommunityResolver, description: 'Return a list of root communities'
    field :seeds, resolver: SeedResolver, description: 'Return a list of seeds'
    field :seedboxes, resolver: SeedboxResolver, description: 'Return a list of seedboxes'
    field :seeds_plant_samples, resolver: SeedsPlantSampleResolver, description: 'Return a list of seeds to plant sample relations'
    field :species, resolver: SpeciesResolver, description: 'Return a list of species'
    field :subspecies, resolver: SubspeciesResolver, description: 'Return a list of subspecies'
    field :tubes, resolver: TubeResolver, description: 'Return a list of tubes'
    # begin additional bacteria types:
    field :freezers, resolver: FreezerResolver, description: 'Return a list of freezers'
    field :freezer_racks, resolver: FreezerRackResolver, description: 'Return a list of freezer racks'
    field :bacteria_boxes, resolver: BacteriaBoxResolver, description: 'Return a list of bacteria boxes'
    field :bacteria_populations, resolver: BacteriaPopulationResolver, description: 'create Return a list of bacteria populations'
    field :bacteria_locations, resolver: BacteriaLocationResolver, description: 'creatReturn a list of bacteria locations'
    field :bacteria_accessions, resolver: BacteriaAccessionResolver, description: 'createReturn a list of bacteria accessions'
    field :bacteria_tubes, resolver: BacteriaTubeResolver, description: 'cReturn a list of bacteria tubes'
  end
end
