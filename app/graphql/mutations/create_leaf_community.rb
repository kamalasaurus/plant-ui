module Mutations
  class CreateLeafCommunity < BaseMutation
    # arguments passed to the `resolve` method
    argument :population_id, Integer, required: true
    argument :leaf_otu_1, Boolean
    argument :leaf_otu_2, Boolean
    argument :leaf_otu_3, Boolean
    argument :leaf_otu_4, Boolean
    argument :leaf_otu_5, Boolean
    argument :leaf_otu_6, Boolean
    argument :leaf_otu_8, Boolean
    argument :leaf_otu_9, Boolean
    argument :leaf_otu_10, Boolean
    argument :leaf_otu_11, Boolean
    argument :leaf_otu_12, Boolean
    argument :leaf_otu_13, Boolean
    argument :leaf_otu_14, Boolean
    argument :leaf_otu_15, Boolean
    argument :leaf_otu_16, Boolean
    argument :leaf_otu_17, Boolean
    argument :leaf_otu_18, Boolean
    argument :leaf_otu_22, Boolean
    argument :leaf_otu_23, Boolean
    argument :leaf_otu_25, Boolean
    argument :leaf_otu_27, Boolean
    argument :leaf_otu_28, Boolean
    argument :leaf_otu_29, Boolean
    argument :leaf_otu_30, Boolean
    argument :leaf_otu_31, Boolean
    argument :leaf_otu_32, Boolean
    argument :leaf_otu_33, Boolean
    argument :leaf_otu_34, Boolean
    argument :leaf_otu_35, Boolean
    argument :leaf_otu_36, Boolean
    argument :leaf_otu_37, Boolean
    argument :leaf_otu_38, Boolean
    argument :leaf_otu_42, Boolean
    argument :leaf_otu_44, Boolean
    argument :leaf_otu_51, Boolean
    argument :leaf_otu_52, Boolean
    argument :leaf_otu_57, Boolean
    argument :leaf_otu_58, Boolean
    argument :leaf_otu_63, Boolean
    argument :leaf_otu_66, Boolean
    argument :leaf_otu_67, Boolean
    argument :leaf_otu_68, Boolean
    argument :leaf_otu_70, Boolean
    argument :leaf_otu_73, Boolean
    argument :leaf_otu_74, Boolean
    argument :leaf_otu_77, Boolean
    argument :leaf_otu_78, Boolean
    argument :leaf_otu_84, Boolean
    argument :leaf_otu_89, Boolean
    argument :leaf_otu_93, Boolean
    argument :leaf_otu_94, Boolean
    argument :leaf_otu_96, Boolean
    argument :leaf_otu_100, Boolean
    argument :leaf_otu_101, Boolean
    argument :leaf_otu_109, Boolean
    argument :leaf_otu_115, Boolean
    argument :leaf_otu_116, Boolean
    argument :leaf_otu_117, Boolean
    argument :leaf_otu_120, Boolean
    argument :leaf_otu_137, Boolean
    argument :leaf_otu_152, Boolean
    argument :leaf_otu_157, Boolean
    argument :leaf_otu_179, Boolean
    argument :leaf_otu_246, Boolean
    argument :leaf_otu_365, Boolean
    argument :leaf_microbiota_richness, Float
    argument :leaf_microbiota_shannon, Float
    argument :leaf_microbiota_pcoa1, Float
    argument :leaf_microbiota_pcoa2, Float
    argument :leaf_pathobiota_richness, Float
    argument :leaf_pathobiota_shannon, Float
    argument :leaf_pathobiota_pcoa1, Float
    argument :leaf_pathobiota_pcoa2, Float

    # return type from the mutation
    type Types::LeafCommunityType

    def resolve(
      population_id: nil,
      leaf_otu_1: nil,
      leaf_otu_2: nil,
      leaf_otu_3: nil,
      leaf_otu_4: nil,
      leaf_otu_5: nil,
      leaf_otu_6: nil,
      leaf_otu_8: nil,
      leaf_otu_9: nil,
      leaf_otu_10: nil,
      leaf_otu_11: nil,
      leaf_otu_12: nil,
      leaf_otu_13: nil,
      leaf_otu_14: nil,
      leaf_otu_15: nil,
      leaf_otu_16: nil,
      leaf_otu_17: nil,
      leaf_otu_18: nil,
      leaf_otu_22: nil,
      leaf_otu_23: nil,
      leaf_otu_25: nil,
      leaf_otu_27: nil,
      leaf_otu_28: nil,
      leaf_otu_29: nil,
      leaf_otu_30: nil,
      leaf_otu_31: nil,
      leaf_otu_32: nil,
      leaf_otu_33: nil,
      leaf_otu_34: nil,
      leaf_otu_35: nil,
      leaf_otu_36: nil,
      leaf_otu_37: nil,
      leaf_otu_38: nil,
      leaf_otu_42: nil,
      leaf_otu_44: nil,
      leaf_otu_51: nil,
      leaf_otu_52: nil,
      leaf_otu_57: nil,
      leaf_otu_58: nil,
      leaf_otu_63: nil,
      leaf_otu_66: nil,
      leaf_otu_67: nil,
      leaf_otu_68: nil,
      leaf_otu_70: nil,
      leaf_otu_73: nil,
      leaf_otu_74: nil,
      leaf_otu_77: nil,
      leaf_otu_78: nil,
      leaf_otu_84: nil,
      leaf_otu_89: nil,
      leaf_otu_93: nil,
      leaf_otu_94: nil,
      leaf_otu_96: nil,
      leaf_otu_100: nil,
      leaf_otu_101: nil,
      leaf_otu_109: nil,
      leaf_otu_115: nil,
      leaf_otu_116: nil,
      leaf_otu_117: nil,
      leaf_otu_120: nil,
      leaf_otu_137: nil,
      leaf_otu_152: nil,
      leaf_otu_157: nil,
      leaf_otu_179: nil,
      leaf_otu_246: nil,
      leaf_otu_365: nil,
      leaf_microbiota_richness: nil,
      leaf_microbiota_shannon: nil,
      leaf_microbiota_pcoa1: nil,
      leaf_microbiota_pcoa2: nil,
      leaf_pathobiota_richness: nil,
      leaf_pathobiota_shannon: nil,
      leaf_pathobiota_pcoa1: nil,
      leaf_pathobiota_pcoa2: nil
    )
      LeafCommunity.create!(
        population_id: population_id,
        leaf_otu_1: leaf_otu_1,
        leaf_otu_2: leaf_otu_2,
        leaf_otu_3: leaf_otu_3,
        leaf_otu_4: leaf_otu_4,
        leaf_otu_5: leaf_otu_5,
        leaf_otu_6: leaf_otu_6,
        leaf_otu_8: leaf_otu_8,
        leaf_otu_9: leaf_otu_9,
        leaf_otu_10: leaf_otu_10,
        leaf_otu_11: leaf_otu_11,
        leaf_otu_12: leaf_otu_12,
        leaf_otu_13: leaf_otu_13,
        leaf_otu_14: leaf_otu_14,
        leaf_otu_15: leaf_otu_15,
        leaf_otu_16: leaf_otu_16,
        leaf_otu_17: leaf_otu_17,
        leaf_otu_18: leaf_otu_18,
        leaf_otu_22: leaf_otu_22,
        leaf_otu_23: leaf_otu_23,
        leaf_otu_25: leaf_otu_25,
        leaf_otu_27: leaf_otu_27,
        leaf_otu_28: leaf_otu_28,
        leaf_otu_29: leaf_otu_29,
        leaf_otu_30: leaf_otu_30,
        leaf_otu_31: leaf_otu_31,
        leaf_otu_32: leaf_otu_32,
        leaf_otu_33: leaf_otu_33,
        leaf_otu_34: leaf_otu_34,
        leaf_otu_35: leaf_otu_35,
        leaf_otu_36: leaf_otu_36,
        leaf_otu_37: leaf_otu_37,
        leaf_otu_38: leaf_otu_38,
        leaf_otu_42: leaf_otu_42,
        leaf_otu_44: leaf_otu_44,
        leaf_otu_51: leaf_otu_51,
        leaf_otu_52: leaf_otu_52,
        leaf_otu_57: leaf_otu_57,
        leaf_otu_58: leaf_otu_58,
        leaf_otu_63: leaf_otu_63,
        leaf_otu_66: leaf_otu_66,
        leaf_otu_67: leaf_otu_67,
        leaf_otu_68: leaf_otu_68,
        leaf_otu_70: leaf_otu_70,
        leaf_otu_73: leaf_otu_73,
        leaf_otu_74: leaf_otu_74,
        leaf_otu_77: leaf_otu_77,
        leaf_otu_78: leaf_otu_78,
        leaf_otu_84: leaf_otu_84,
        leaf_otu_89: leaf_otu_89,
        leaf_otu_93: leaf_otu_93,
        leaf_otu_94: leaf_otu_94,
        leaf_otu_96: leaf_otu_96,
        leaf_otu_100: leaf_otu_100,
        leaf_otu_101: leaf_otu_101,
        leaf_otu_109: leaf_otu_109,
        leaf_otu_115: leaf_otu_115,
        leaf_otu_116: leaf_otu_116,
        leaf_otu_117: leaf_otu_117,
        leaf_otu_120: leaf_otu_120,
        leaf_otu_137: leaf_otu_137,
        leaf_otu_152: leaf_otu_152,
        leaf_otu_157: leaf_otu_157,
        leaf_otu_179: leaf_otu_179,
        leaf_otu_246: leaf_otu_246,
        leaf_otu_365: leaf_otu_365,
        leaf_microbiota_richness: leaf_microbiota_richness,
        leaf_microbiota_shannon: leaf_microbiota_shannon,
        leaf_microbiota_pcoa1: leaf_microbiota_pcoa1,
        leaf_microbiota_pcoa2: leaf_microbiota_pcoa2,
        leaf_pathobiota_richness: leaf_pathobiota_richness,
        leaf_pathobiota_shannon: leaf_pathobiota_shannon,
        leaf_pathobiota_pcoa1: leaf_pathobiota_pcoa1,
        leaf_pathobiota_pcoa2: leaf_pathobiota_pcoa2
      )
    end
  end
end