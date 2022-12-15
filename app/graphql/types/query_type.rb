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

    field :accession, Types::AccessionType,
      description: "Return an accession" do
        argument :id, ID, required: false
        argument :name, String, required: false
      end
    def accession(*args)
      if args.first[:id]
        Accession.find(args.first[:id])
      elsif args.first[:name]
        Accession.get(args.first[:name])
      end
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

    field :population, Types::PopulationType,
      description: "Return a population" do
        argument :id, ID, required: true
      end
    def population(id:)
      Population.find(id)
    end

    field :root_communities, [Types::RootCommunityType], null: false,
      description: "Return a list of root communities"
    def root_communities
      RootCommunity.all
    end

    field :seeds, [Types::SeedType], null: false,
      description: "Return a list of seeds" do
        argument :genus, String, required: false
      end
    def seeds(genus:)
      if genus.present?
        Seed.includes(:species).where('species.genus' => genus)
      else
        Seed.all
      end
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
