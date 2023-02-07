class SeedResolver < BaseResolver
  type [Types::SeedType], null: false

  scope do
    object.blank? ? 
      Seed.all :
      object.respond_to?(:seeds) ?
        object.seeds :
        object.respond_to?(:seed) ?
          object.seed :
          Seed.all
  end

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

  option(:population_name, type: String, description: 'select by population name') do |scope, value|
    scope.select { |seed| seed.population.name == value.upcase }
  end

  option(:population_names, type: [String], description: 'select by multiple population names') do |scope, value|
    scope.select { |seed| value.map(&:upcase).include? seed.population.name }
  end

  option(:species_abbr, type: String, description: 'select by species abbreviation') do |scope, value|
    scope.select { |seed| seed.species.abbreviation == value.upcase }
  end

  option(:species_abbrs, type: [String], description: 'select by multiple species abbreviations') do |scope, value|
    scope.select { |seed| value.map(&:upcase).include? seed.species.abbreviation }
  end

  option(:accession_name, type: String, description: 'select by accession name') do |scope, value|
    scope.select { |seed| seed.accession.name == value.upcase }
  end

  option(:accession_names, type: [String], description: 'select by multiple accession names') do |scope, value|
    scope.select { |seed| value.map(&:upcase).include? seed.accession.name }
  end

  option(:label, type: String, description: 'select by label') do |scope, value|
    scope.select { |seed| seed.label == value }
  end

  option(:labels, type: [String], description: 'select by multiple labels') do |scope, value|
    scope.select { |seed| value.include? seed.label }
  end

  option(:abbreviation, type: String, description: 'select by abbreviation') do |scope, value|
    scope.select { |seed| seed.abbreviation == value.upcase }
  end

  option(:abbreviations, type: [String], description: 'select by multiple abbreviations') do |scope, value|
    scope.select { |seed| value.map(&:upcase).include? seed.abbreviation }
  end
end