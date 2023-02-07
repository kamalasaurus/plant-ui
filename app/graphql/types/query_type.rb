# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # field :accessions, [Types::AccessionType], null: false,
    #                                            description: 'Return a list of accessions' do
    #   argument :id, ID, required: false
    #   argument :name, String, required: false
    # end
    # def accessions(*args)
    #   if args.dig(0, :id)
    #     [Accession.find(args.dig(0, :id))]
    #   elsif args.dig(0, :name)
    #     [Accession.get(args.dig(0, :name))]
    #   else
    #     Accession.all
    #   end
    # end

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
    field :tubes, resolver: TubeResolver, description: 'Return a list of tubes'
  end
end
