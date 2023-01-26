# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :accessions, [Types::AccessionType], null: false,
                                               description: 'Return a list of accessions' do
      argument :id, ID, required: false
      argument :name, String, required: false
    end
    def accessions(*args)
      if args.dig(0, :id)
        [Accession.find(args.dig(0, :id))]
      elsif args.dig(0, :name)
        [Accession.get(args.dig(0, :name))]
      else
        Accession.all
      end
    end

    field :cytometry_readings, [Types::CytometryReadingType], null: false,
                                                              description: 'Return a list of cytometry readings' do
      argument :id, ID, required: false
    end
    def cytometry_readings(*args)
      if args.dig(0, :id)
        [CytometryReading.find(args.dig(0, :id))]
      else
        CytometryReading.all
      end
    end

    field :leaf_communities, [Types::LeafCommunityType], null: false,
                                                         description: 'Return a list of leaf communities' do
      argument :id, ID, required: false
    end
    def leaf_communities(*args)
      if args.dig(0, :id)
        [LeafCommunity.find(args.dig(0, :id))]
      else
        LeafCommunity.all
      end
    end

    field :locations, [Types::LocationType], null: false,
                                             description: 'Return a list of locations' do
      argument :id, ID, required: false
    end
    def locations(*args)
      if args.dig(0, :id)
        [Location.find(args.dig(0, :id))]
      else
        Location.all
      end
    end

    field :plant_neighborhoods, [Types::PlantNeighborhoodType], null: false,
                                                                description: 'Return a list of plant neighborhoods' do
      argument :id, ID, required: false
    end
    def plant_neighborhoods(*args)
      if args.dig(0, :id)
        [PlantNeighborhood.find(args.dig(0, :id))]
      else
        PlantNeighborhood.all
      end
    end

    field :plant_samples, [Types::PlantSampleType], null: false,
                                                    description: 'Return a list of plant samples' do
      argument :id, ID, required: false
    end
    def plant_samples(*args)
      if args.dig(0, :id)
        [PlantSample.find(args.dig(0, :id))]
      else
        PlantSample.all
      end
    end

    field :populations, [Types::PopulationType], null: false,
                                                 description: 'Return a list of populations' do
      argument :id, ID, required: false
      argument :name, String, required: false
    end
    def populations(*args)
      if args.dig(0, :id)
        [Population.find(args.dig(0, :id))]
      elsif args.dig(0, :name)
        [Population.get(args.dig(0, :name))]
      else
        Population.all
      end
    end

    field :root_communities, [Types::RootCommunityType], null: false,
                                                         description: 'Return a list of root communities' do
      argument :id, ID, required: false
    end
    def root_communities(*args)
      if args.dig(0, :id)
        [RootCommunity.find(args.dig(0, :id))]
      else
        RootCommunity.all
      end
    end

    field :seeds, [Types::SeedType], null: false,
                                     description: 'Return a list of seeds' do
      argument :id, ID, required: false
      argument :genus, String, required: false
    end
    def seeds(*args)
      if args.dig(0, :id)
        [Seed.find(args.dig(0, :id))]
      elsif args.dig(0, :genus)
        Seed.includes(:species).where('species.genus' => args.dig(0, :genus))
      else
        Seed.all
      end
    end

    field :seedboxes, [Types::SeedboxType], null: false,
                                            description: 'Return a list of seedboxes' do
      argument :id, ID, required: false
    end
    def seedboxes(*args)
      if args.dig(0, :id)
        [Seedbox.find(args.dig(0, :id))]
      else
        Seedbox.all
      end
    end

    field :seeds_plant_samples, [Types::SeedsPlantSampleType], null: false,
                                                               description: 'Return a list of seeds to plant sample relations' do
      argument :id, ID, required: false
    end
    def seeds_plant_samples(*args)
      if args.dig(0, :id)
        [SeedsPlantSample.find(args.dig(0, :id))]
      else
        SeedsPlantSample.all
      end
    end

    field :species, [Types::SpeciesType], null: false,
                                          description: 'Return a list of species or a single species' do
      argument :id, ID, required: false
    end
    def species(*args)
      if args.dig(0, :id)
        [Species.find(args.dig(0, :id))]
      else
        Species.all
      end
    end

    # field :tubes, [Types::TubeType], null: false,
    #                                  description: 'Return a list of tubes' do
    #   argument :id, ID, required: false
    # end
    # def tubes(*args)
    #   if args.dig(0, :id)
    #     [Tube.find(args.dig(0, :id))]
    #   else
    #     Tube.all
    #   end
    # end
    field :tubes, resolver: TubeResolver, description: 'Return a list of tubes'
  end
end
