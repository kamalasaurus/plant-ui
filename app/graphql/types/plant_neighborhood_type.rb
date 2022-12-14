# frozen_string_literal: true

module Types
  class PlantNeighborhoodType < Types::BaseObject
    field :id, ID, null: false
    field :population_id, Integer, null: false
    field :plant_otu_1, Integer
    field :plant_otu_3, Integer
    field :plant_otu_4, Integer
    field :plant_otu_7, Integer
    field :plant_otu_8, Integer
    field :plant_otu_10, Integer
    field :plant_otu_15, Integer
    field :plant_otu_16, Integer
    field :plant_otu_18, Integer
    field :plant_otu_20, Integer
    field :plant_otu_27, Integer
    field :plant_otu_46, Integer
    field :plant_otu_49, Integer
    field :plant_otu_65, Integer
    field :plant_otu_67, Integer
    field :plant_otu_71, Integer
    field :plant_otu_72, Integer
    field :plant_otu_78, Integer
    field :plant_otu_83, Integer
    field :plant_otu_87, Integer
    field :plant_otu_88, Integer
    field :plant_otu_100, Integer
    field :plant_otu_109, Integer
    field :plant_otu_113, Integer
    field :plant_otu_114, Integer
    field :plant_otu_132, Integer
    field :plant_otu_136, Integer
    field :plant_otu_143, Integer
    field :plant_otu_145, Integer
    field :plant_otu_146, Integer
    field :plant_otu_147, Integer
    field :plant_otu_149, Integer
    field :plant_otu_154, Integer
    field :plant_otu_159, Integer
    field :plant_otu_179, Integer
    field :plant_otu_192, Integer
    field :plant_otu_196, Integer
    field :plant_otu_198, Integer
    field :plant_otu_202, Integer
    field :plant_otu_203, Integer
    field :plant_otu_204, Integer
    field :plant_otu_216, Integer
    field :plant_otu_223, Integer
    field :plant_otu_234, Integer
    field :plant_richness, Float
    field :plant_shannon, Float
    field :plant_pcoa1, Float
    field :plant_pcoa2, Float
    field :plant_pcoa3, Float
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
