# frozen_string_literal: true

module Mutations
  class CreateBacteriaBox < BaseMutation
    # arguments passed to the `resolve` method
    argument :freezer_rack_id, Integer, required: true
    argument :name, String, required: true

    # return type from the mutation
    type Types::BacteriaBoxType

    def resolve(freezer_rack_id: nil, name: nil)
      BacteriaBox.create!(
        freezer_rack_id:,
        name:
      )
    end
  end
end
