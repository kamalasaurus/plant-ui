module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :accessions, [Types::AccessionType], null: false,
      description: "Return a list of accessions"
    def accessions
      Accession.all
    end

    field :cytometry_readings, [Types::CytometryReadingType], null: false,
      description: "Return a list of cytometry readings"
    def cytometry_readings
      CytometryReading.all
    end

    field :leaf_communities, [Types::LeafCommunityType], null: false,
      description: "Return a list of leaf communities"
    def leaf_communities
      LeafCommunity.all
    end

    field :locations, [Types::LocationType], null: false,
      description: "Return a list of locations"
    def locations
      Location.all
    end

    field :plant_neighborhoods, [Types::PlantNeighborhoodType], null: false,
      description: "Return a list of plant neighborhoods"
    def plant_neighborhoods
      PlantNeighborhood.all
    end

    field :plant_samples, [Types::PlantSampleType], null: false,
      description: "Return a list of plant samples"
    def plant_samples
      PlantSample.all
    end

    field :populations, [Types::PopulationType], null: false,
      description: "Return a list of populations"
    def populations
      Population.all
    end

    field :root_communities, [Types::RootCommunityType], null: false,
      description: "Return a list of root communities"
    def root_communities
      RootCommunity.all
    end

    field :seeds, [Types::SeedType], null: false,
      description: "Return a list of seeds"
    def seeds
      Seed.all
    end

    field :seedboxes, [Types::SeedboxType], null: false,
      description: "Return a list of seedboxes"
    def seedboxes
      Seedbox.all
    end

    field :seeds_plant_samples, [Types::SeedsPlantSampleType], null: false,
      description: "Return a list of seeds to plant sample relations"
    def seeds_plant_samples
      SeedsPlantSample.all
    end

    field :species, [Types::SpeciesType], null: false,
      description: "Return a list of species"
    def species
      Species.all
    end

    field :tubes, [Types::TubeType], null: false,
      description: "Return a list of tubes"
    def tubes
      Tube.all
    end
  end
end
