# frozen_string_literal: true

module Types
  class LeafCommunityType < Types::BaseObject
    field :id, ID, null: false
    field :population_id, Integer, null: false
    field :leaf_otu_1, Boolean
    field :leaf_otu_2, Boolean
    field :leaf_otu_3, Boolean
    field :leaf_otu_4, Boolean
    field :leaf_otu_5, Boolean
    field :leaf_otu_6, Boolean
    field :leaf_otu_8, Boolean
    field :leaf_otu_9, Boolean
    field :leaf_otu_10, Boolean
    field :leaf_otu_11, Boolean
    field :leaf_otu_12, Boolean
    field :leaf_otu_13, Boolean
    field :leaf_otu_14, Boolean
    field :leaf_otu_15, Boolean
    field :leaf_otu_16, Boolean
    field :leaf_otu_17, Boolean
    field :leaf_otu_18, Boolean
    field :leaf_otu_22, Boolean
    field :leaf_otu_23, Boolean
    field :leaf_otu_25, Boolean
    field :leaf_otu_27, Boolean
    field :leaf_otu_28, Boolean
    field :leaf_otu_29, Boolean
    field :leaf_otu_30, Boolean
    field :leaf_otu_31, Boolean
    field :leaf_otu_32, Boolean
    field :leaf_otu_33, Boolean
    field :leaf_otu_34, Boolean
    field :leaf_otu_35, Boolean
    field :leaf_otu_36, Boolean
    field :leaf_otu_37, Boolean
    field :leaf_otu_38, Boolean
    field :leaf_otu_42, Boolean
    field :leaf_otu_44, Boolean
    field :leaf_otu_51, Boolean
    field :leaf_otu_52, Boolean
    field :leaf_otu_57, Boolean
    field :leaf_otu_58, Boolean
    field :leaf_otu_63, Boolean
    field :leaf_otu_66, Boolean
    field :leaf_otu_67, Boolean
    field :leaf_otu_68, Boolean
    field :leaf_otu_70, Boolean
    field :leaf_otu_73, Boolean
    field :leaf_otu_74, Boolean
    field :leaf_otu_77, Boolean
    field :leaf_otu_78, Boolean
    field :leaf_otu_84, Boolean
    field :leaf_otu_89, Boolean
    field :leaf_otu_93, Boolean
    field :leaf_otu_94, Boolean
    field :leaf_otu_96, Boolean
    field :leaf_otu_100, Boolean
    field :leaf_otu_101, Boolean
    field :leaf_otu_109, Boolean
    field :leaf_otu_115, Boolean
    field :leaf_otu_116, Boolean
    field :leaf_otu_117, Boolean
    field :leaf_otu_120, Boolean
    field :leaf_otu_137, Boolean
    field :leaf_otu_152, Boolean
    field :leaf_otu_157, Boolean
    field :leaf_otu_179, Boolean
    field :leaf_otu_246, Boolean
    field :leaf_otu_365, Boolean
    field :leaf_microbiota_richness, Float
    field :leaf_microbiota_shannon, Float
    field :leaf_microbiota_pcoa1, Float
    field :leaf_microbiota_pcoa2, Float
    field :leaf_pathobiota_richness, Float
    field :leaf_pathobiota_shannon, Float
    field :leaf_pathobiota_pcoa1, Float
    field :leaf_pathobiota_pcoa2, Float
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
