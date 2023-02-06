class SeedsPlantSampleResolver < BaseResolver
  type [Types::SeedsPlantSampleType], null: false

  scope { SeedsPlantSample.all }

  option(:seed_id, type: Integer, description: 'select by seed id') do |scope, value|
    scope.where(seed_id: value)
  end

  option(:plant_sample_id, type: Integer, description: 'select by plant sample id') do |scope, value|
    scope.where(plant_sample_id: value)
  end
end