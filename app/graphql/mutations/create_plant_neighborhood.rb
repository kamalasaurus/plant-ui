# frozen_string_literal: true

module Mutations
  class CreatePlantNeighborhood < BaseMutation
    # arguments passed to the `resolve` method
    argument :population_id, Integer, required: true
    argument :plant_otu_1, Integer
    argument :plant_otu_3, Integer
    argument :plant_otu_4, Integer
    argument :plant_otu_7, Integer
    argument :plant_otu_8, Integer
    argument :plant_otu_10, Integer
    argument :plant_otu_15, Integer
    argument :plant_otu_16, Integer
    argument :plant_otu_18, Integer
    argument :plant_otu_20, Integer
    argument :plant_otu_27, Integer
    argument :plant_otu_46, Integer
    argument :plant_otu_49, Integer
    argument :plant_otu_65, Integer
    argument :plant_otu_67, Integer
    argument :plant_otu_71, Integer
    argument :plant_otu_72, Integer
    argument :plant_otu_78, Integer
    argument :plant_otu_83, Integer
    argument :plant_otu_87, Integer
    argument :plant_otu_88, Integer
    argument :plant_otu_100, Integer
    argument :plant_otu_109, Integer
    argument :plant_otu_113, Integer
    argument :plant_otu_114, Integer
    argument :plant_otu_132, Integer
    argument :plant_otu_136, Integer
    argument :plant_otu_143, Integer
    argument :plant_otu_145, Integer
    argument :plant_otu_146, Integer
    argument :plant_otu_147, Integer
    argument :plant_otu_149, Integer
    argument :plant_otu_154, Integer
    argument :plant_otu_159, Integer
    argument :plant_otu_179, Integer
    argument :plant_otu_192, Integer
    argument :plant_otu_196, Integer
    argument :plant_otu_198, Integer
    argument :plant_otu_202, Integer
    argument :plant_otu_203, Integer
    argument :plant_otu_204, Integer
    argument :plant_otu_216, Integer
    argument :plant_otu_223, Integer
    argument :plant_otu_234, Integer
    argument :plant_richness, Float
    argument :plant_shannon, Float
    argument :plant_pcoa1, Float
    argument :plant_pcoa2, Float
    argument :plant_pcoa3, Float

    # return type from the mutation
    type Types::PlantNeighborhoodType

    def resolve(
      population_id: nil,
      plant_otu_1: nil,
      plant_otu_3: nil,
      plant_otu_4: nil,
      plant_otu_7: nil,
      plant_otu_8: nil,
      plant_otu_10: nil,
      plant_otu_15: nil,
      plant_otu_16: nil,
      plant_otu_18: nil,
      plant_otu_20: nil,
      plant_otu_27: nil,
      plant_otu_46: nil,
      plant_otu_49: nil,
      plant_otu_65: nil,
      plant_otu_67: nil,
      plant_otu_71: nil,
      plant_otu_72: nil,
      plant_otu_78: nil,
      plant_otu_83: nil,
      plant_otu_87: nil,
      plant_otu_88: nil,
      plant_otu_100: nil,
      plant_otu_109: nil,
      plant_otu_113: nil,
      plant_otu_114: nil,
      plant_otu_132: nil,
      plant_otu_136: nil,
      plant_otu_143: nil,
      plant_otu_145: nil,
      plant_otu_146: nil,
      plant_otu_147: nil,
      plant_otu_149: nil,
      plant_otu_154: nil,
      plant_otu_159: nil,
      plant_otu_179: nil,
      plant_otu_192: nil,
      plant_otu_196: nil,
      plant_otu_198: nil,
      plant_otu_202: nil,
      plant_otu_203: nil,
      plant_otu_204: nil,
      plant_otu_216: nil,
      plant_otu_223: nil,
      plant_otu_234: nil,
      plant_richness: nil,
      plant_shannon: nil,
      plant_pcoa1: nil,
      plant_pcoa2: nil,
      plant_pcoa3: nil
    )
      PlantNeighborhood.create!(
        population_id:,
        plant_otu_1:,
        plant_otu_3:,
        plant_otu_4:,
        plant_otu_7:,
        plant_otu_8:,
        plant_otu_10:,
        plant_otu_15:,
        plant_otu_16:,
        plant_otu_18:,
        plant_otu_20:,
        plant_otu_27:,
        plant_otu_46:,
        plant_otu_49:,
        plant_otu_65:,
        plant_otu_67:,
        plant_otu_71:,
        plant_otu_72:,
        plant_otu_78:,
        plant_otu_83:,
        plant_otu_87:,
        plant_otu_88:,
        plant_otu_100:,
        plant_otu_109:,
        plant_otu_113:,
        plant_otu_114:,
        plant_otu_132:,
        plant_otu_136:,
        plant_otu_143:,
        plant_otu_145:,
        plant_otu_146:,
        plant_otu_147:,
        plant_otu_149:,
        plant_otu_154:,
        plant_otu_159:,
        plant_otu_179:,
        plant_otu_192:,
        plant_otu_196:,
        plant_otu_198:,
        plant_otu_202:,
        plant_otu_203:,
        plant_otu_204:,
        plant_otu_216:,
        plant_otu_223:,
        plant_otu_234:,
        plant_richness:,
        plant_shannon:,
        plant_pcoa1:,
        plant_pcoa2:,
        plant_pcoa3:
      )
    end
  end
end
