class SeedResolver < BaseResolver
  type [Types::SeedType], null: false

  scope { Seed.all }

  field :accession, Types::AccessionType
  field :species, Types::SpeciesType
  field :population, Types::PopulationType

  field :plant_samples, [Types::PlantSampleType]

  field :label, String, null: false
  field :abbreviation, String, null: false

  option(:generation, type: Integer, description: 'select by generation') do |scope, value|
    scope.where(generation: value)
  end

  option(:generations, type: [Integer], description: 'select by multiple generations') do |scope, value|
    scope.where(generation: value)
  end

  option(:parent_id, type: Integer, description: 'select by parent id') do |scope, value|
    scope.where(parent_id: value)
  end

  option(:parent_ids, type: [Integer], description: 'select by multiple parent ids') do |scope, value|
    scope.where(parent_id: value)
  end

  option(:accession_id, type: Integer, description: 'select by accession id') do |scope, value|
    scope.where(accession_id: value)
  end

  option(:accession_ids, type: [Integer], description: 'select by multiple accession ids') do |scope, value|
    scope.where(accession_id: value)
  end

  option(:species_id, type: Integer, description: 'select by species id') do |scope, value|
    scope.where(species_id: value)
  end

  option(:species_ids, type: [Integer], description: 'select by multiple species ids') do |scope, value|
    scope.where(species_id: value)
  end

  option(:population, type: String, description: 'select by population name') do |scope, value|
    scope.select { |seed| seed.population.name == value }
  end

  option(:populations, type: [String], description: 'select by multiple population names') do |scope, value|
    scope.select { |seed| value.include? seed.population.name }
  end

  ##TODO: more access methods!

end