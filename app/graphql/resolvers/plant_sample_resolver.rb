class PlantSampleResolver < BaseResolver
  type [Types::PlantSampleType], null: false

  scope do
    object.blank? ?
      PlantSample.all :
      object.respond_to?(:plant_samples) ?
        object.plant_samples :
        []
  end

  option(:label, type: String, description: 'select by label') do |scope, value|
    scope.where(label: value)
  end

  option(:labels, type: [String], description: 'select by multiple labels') do |scope, value|
    scope.where(label: value)
  end

  option(:storage_method, type: String, description: 'select by storage method') do |scope, value|
    scope.where(storage_method: value)
  end

  option(:storage_methods, type: [String], description: 'select by multiple storage methods') do |scope, value|
    scope.where(storage_method: value)
  end

  option(:quantity, type: Integer, description: 'select by quantity') do |scope, value|
    scope.where(quantity: value)
  end

  option(:quantities, type: [Integer], description: 'select by multiple quantities') do |scope, value|
    scope.where(quantity: value)
  end

  option(:accession_tray, type: String, description: 'select by accession tray') do |scope, value|
    scope.where(accession_tray: value)
  end

  option(:accession_trays, type: [String], description: 'select by multiple accession trays') do |scope, value|
    scope.where(accession_tray: value)
  end

  option(:replication_tray, type: Integer, description: 'select by accession tray') do |scope, value|
    scope.where(replication_tray: value)
  end

  option(:replication_trays, type: [Integer], description: 'select by multiple accession trays') do |scope, value|
    scope.where(replication_tray: value)
  end

  option(:row, type: String, description: 'select by row') do |scope, value|
    scope.where(row: value)
  end

  option(:rows, type: [String], description: 'select by multiple rows') do |scope, value|
    scope.where(row: value)
  end

  option(:column, type: Integer, description: 'select by column') do |scope, value|
    scope.where(column: value)
  end

  option(:columns, type: [Integer], description: 'select by multiple columns') do |scope, value|
    scope.where(column: value)
  end

  option(:has_cytometry, type: Boolean, description: 'select if flow cytometry exists') do |scope, value|
    scope.select { |plant_sample| plant_sample.cytometrized? == value }
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

  option(:seed_abbreviations, type: [String], description: 'select by seed abbreviations') do |scope, value|
    scope.select { |plant_sample| !(plant_sample.seeds.map(&:abbreviation) & value).empty? }
  end

  option(:population_name, type: String, description: 'select by population name') do |scope, value|
    scope.select { |plant_sample| plant_sample.population.name == value.upcase }
  end

  option(:population_names, type: [String], description: 'select by multiple population names') do |scope, value|
    scope.select { |plant_sample| value.map(&:upcase).include? plant_sample.population.name }
  end

  option(:species_abbr, type: String, description: 'select by species abbreviation') do |scope, value|
    scope.select { |plant_sample| plant_sample.species.abbreviation == value.upcase }
  end

  option(:species_abbrs, type: [String], description: 'select by multiple species abbreviations') do |scope, value|
    scope.select { |plant_sample| value.map(&:upcase).include? plant_sample.species.abbreviation }
  end

  option(:accession_name, type: String, description: 'select by accession name') do |scope, value|
    scope.select { |plant_sample| plant_sample.population.name == value.upcase }
  end

  option(:accession_names, type: [String], description: 'select by multiple accession names') do |scope, value|
    scope.select { |plant_sample| value.map(&:upcase).include? plant_sample.population.name }
  end
end