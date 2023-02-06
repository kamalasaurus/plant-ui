class SpeciesResolver < BaseResolver
  type [Types::SpeciesType], null: false

  scope { Species.all }
end