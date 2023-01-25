module Mutations
  class CreateSeedbox < BaseMutation
    # arguments passed to the `resolve` method
    argument :name, String, required: true

    # return type from the mutation
    type Types::SeedboxType

    def resolve(name: nil)
      Seedbox.create!(
        name: name
      )
    end
  end
end