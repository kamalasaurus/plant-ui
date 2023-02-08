# frozen_string_literal: true

module Mutations
  class CreateRootCommunity < BaseMutation
    # arguments passed to the `resolve` method
    argument :population_id, Integer, required: true
    argument :root_otu_1, Boolean
    argument :root_otu_2, Boolean
    argument :root_otu_3, Boolean
    argument :root_otu_4, Boolean
    argument :root_otu_5, Boolean
    argument :root_otu_6, Boolean
    argument :root_otu_7, Boolean
    argument :root_otu_9, Boolean
    argument :root_otu_11, Boolean
    argument :root_otu_16, Boolean
    argument :root_otu_17, Boolean
    argument :root_otu_19, Boolean
    argument :root_otu_20, Boolean
    argument :root_otu_21, Boolean
    argument :root_otu_24, Boolean
    argument :root_otu_26, Boolean
    argument :root_otu_28, Boolean
    argument :root_otu_30, Boolean
    argument :root_otu_41, Boolean
    argument :root_otu_46, Boolean
    argument :root_otu_49, Boolean
    argument :root_otu_50, Boolean
    argument :root_otu_51, Boolean
    argument :root_otu_58, Boolean
    argument :root_otu_63, Boolean
    argument :root_otu_64, Boolean
    argument :root_otu_70, Boolean
    argument :root_otu_75, Boolean
    argument :root_otu_76, Boolean
    argument :root_otu_100, Boolean
    argument :root_otu_102, Boolean
    argument :root_otu_114, Boolean
    argument :root_otu_121, Boolean
    argument :root_otu_122, Boolean
    argument :root_otu_144, Boolean
    argument :root_otu_146, Boolean
    argument :root_otu_156, Boolean
    argument :root_otu_163, Boolean
    argument :root_otu_174, Boolean
    argument :root_otu_199, Boolean
    argument :root_otu_238, Boolean
    argument :root_otu_258, Boolean
    argument :root_otu_284, Boolean
    argument :root_otu_989, Boolean
    argument :root_microbiota_richness, Float
    argument :root_microbiota_shannon, Float
    argument :root_microbiota_pcoa1, Float
    argument :root_microbiota_pcoa2, Float
    argument :root_pathobiota_richness, Float
    argument :root_pathobiota_shannon, Float
    argument :root_pathobiota_pcoa2, Float

    # return type from the mutation
    type Types::RootCommunityType

    def resolve(
      population_id: nil,
      root_otu_1: nil,
      root_otu_2: nil,
      root_otu_3: nil,
      root_otu_4: nil,
      root_otu_5: nil,
      root_otu_6: nil,
      root_otu_7: nil,
      root_otu_10: nil,
      root_otu_11: nil,
      root_otu_16: nil,
      root_otu_17: nil,
      root_otu_19: nil,
      root_otu_20: nil,
      root_otu_21: nil,
      root_otu_24: nil,
      root_otu_26: nil,
      root_otu_28: nil,
      root_otu_30: nil,
      root_otu_41: nil,
      root_otu_46: nil,
      root_otu_49: nil,
      root_otu_50: nil,
      root_otu_51: nil,
      root_otu_58: nil,
      root_otu_63: nil,
      root_otu_64: nil,
      root_otu_70: nil,
      root_otu_75: nil,
      root_otu_76: nil,
      root_otu_100: nil,
      root_otu_102: nil,
      root_otu_114: nil,
      root_otu_121: nil,
      root_otu_122: nil,
      root_otu_144: nil,
      root_otu_146: nil,
      root_otu_156: nil,
      root_otu_163: nil,
      root_otu_174: nil,
      root_otu_199: nil,
      root_otu_238: nil,
      root_otu_258: nil,
      root_otu_284: nil,
      root_otu_989: nil,
      root_microbiota_richness: nil,
      root_microbiota_shannon: nil,
      root_microbiota_pcoa1: nil,
      root_microbiota_pcoa2: nil,
      root_pathobiota_richness: nil,
      root_pathobiota_shannon: nil,
      root_pathobiota_pcoa2: nil
    )
      RootCommunity.create!(
        population_id:,
        root_otu_1:,
        root_otu_2:,
        root_otu_3:,
        root_otu_4:,
        root_otu_5:,
        root_otu_6:,
        root_otu_7:,
        root_otu_10: root_otu_9,
        root_otu_11:,
        root_otu_16:,
        root_otu_17:,
        root_otu_19:,
        root_otu_20:,
        root_otu_21:,
        root_otu_24:,
        root_otu_26:,
        root_otu_28:,
        root_otu_30:,
        root_otu_41:,
        root_otu_46:,
        root_otu_49:,
        root_otu_50:,
        root_otu_51:,
        root_otu_58:,
        root_otu_63:,
        root_otu_64:,
        root_otu_70:,
        root_otu_75:,
        root_otu_76:,
        root_otu_100:,
        root_otu_102:,
        root_otu_114:,
        root_otu_121:,
        root_otu_122:,
        root_otu_144:,
        root_otu_146:,
        root_otu_156:,
        root_otu_163:,
        root_otu_174:,
        root_otu_199:,
        root_otu_238:,
        root_otu_258:,
        root_otu_284:,
        root_otu_989:,
        root_microbiota_richness:,
        root_microbiota_shannon:,
        root_microbiota_pcoa1:,
        root_microbiota_pcoa2:,
        root_pathobiota_richness:,
        root_pathobiota_shannon:,
        root_pathobiota_pcoa2:
      )
    end
  end
end
