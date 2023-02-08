class SeedsPlantSampleResolver < BaseResolver
  type [Types::SeedsPlantSampleType], null: false

  scope do
    if object.blank?
      SeedsPlantSample.all
    elsif object.respond_to?(:seeds_plant_samples)
      object.seeds_plant_samples
    else
      []
    end
  end

  scope { SeedsPlantSample.all }

  option(:seed_id, type: Integer, description: 'select by seed id') do |scope, value|
    scope.where(seed_id: value)
  end

  option(:plant_sample_id, type: Integer, description: 'select by plant sample id') do |scope, value|
    scope.where(plant_sample_id: value)
  end
end
