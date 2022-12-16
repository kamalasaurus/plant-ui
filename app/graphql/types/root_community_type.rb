# frozen_string_literal: true

module Types
  class RootCommunityType < Types::BaseObject
    field :id, ID, null: false
    field :population_id, Integer, null: false
    field :root_otu_1, Boolean
    field :root_otu_2, Boolean
    field :root_otu_3, Boolean
    field :root_otu_4, Boolean
    field :root_otu_5, Boolean
    field :root_otu_6, Boolean
    field :root_otu_7, Boolean
    field :root_otu_9, Boolean
    field :root_otu_11, Boolean
    field :root_otu_16, Boolean
    field :root_otu_17, Boolean
    field :root_otu_19, Boolean
    field :root_otu_20, Boolean
    field :root_otu_21, Boolean
    field :root_otu_24, Boolean
    field :root_otu_26, Boolean
    field :root_otu_28, Boolean
    field :root_otu_30, Boolean
    field :root_otu_41, Boolean
    field :root_otu_46, Boolean
    field :root_otu_49, Boolean
    field :root_otu_50, Boolean
    field :root_otu_51, Boolean
    field :root_otu_58, Boolean
    field :root_otu_63, Boolean
    field :root_otu_64, Boolean
    field :root_otu_70, Boolean
    field :root_otu_75, Boolean
    field :root_otu_76, Boolean
    field :root_otu_100, Boolean
    field :root_otu_102, Boolean
    field :root_otu_114, Boolean
    field :root_otu_121, Boolean
    field :root_otu_122, Boolean
    field :root_otu_144, Boolean
    field :root_otu_146, Boolean
    field :root_otu_156, Boolean
    field :root_otu_163, Boolean
    field :root_otu_174, Boolean
    field :root_otu_199, Boolean
    field :root_otu_238, Boolean
    field :root_otu_258, Boolean
    field :root_otu_284, Boolean
    field :root_otu_989, Boolean
    field :root_microbiota_richness, Float
    field :root_microbiota_shannon, Float
    field :root_microbiota_pcoa1, Float
    field :root_microbiota_pcoa2, Float
    field :root_pathobiota_richness, Float
    field :root_pathobiota_shannon, Float
    field :root_pathobiota_pcoa2, Float
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :population, Types::PopulationType, null: false

    field :otus, [String]
    field :pathobiota, GraphQL::Types::JSON
    field :microbiota, GraphQL::Types::JSON

    def otus
      object.otus
    end

    def pathobiota
      object.pathobiota
    end

    def microbiota
      object.microbiota
    end
  end
end
