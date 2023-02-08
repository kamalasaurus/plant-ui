class AccessionResolver < BaseResolver
  type [Types::AccessionType], null: false

  scope do
    if object.blank?
      Accession.all
    elsif object.respond_to?(:accessions)
      object.accessions
    else
      []
    end
  end

  option(:accession_number, type: Integer, description: 'select by accession number') do |scope, value|
    scope.where(accession_number: value)
  end

  option(:accession_numbers, type: [Integer], description: 'select by multiple accession numbers') do |scope, value|
    scope.where(accession_number: value)
  end

  option(:population_id, type: Integer, description: 'select by population id') do |scope, value|
    scope.where(population_id: value)
  end

  option(:population_ids, type: [Integer], description: 'select by multiple population ids') do |scope, value|
    scope.where(population_id: value)
  end

  option(:population_name, type: String, description: 'select by population name') do |scope, value|
    scope.includes(:population).select { |acc| acc.population.name == value.upcase }
  end

  option(:population_names, type: [String], description: 'select by multiple population names') do |scope, value|
    scope.includes(:population).select { |acc| value.map(&:upcase).includes? acc.population.name }
  end

  option(:name, type: String, description: 'select by name') do |scope, value|
    scope.select { |accession| accession.name == value.upcase }
  end

  option(:names, type: [String], description: 'select by multiple names') do |scope, value|
    scope.select { |accession| value.map(&:upcase).include? accession.name }
  end

  option(:seeds, type: [String], description: 'select by multiple seed abbreviations') do |scope, value|
    scope.select { |acc| !!acc.seeds.map(&:abbreviation).intersect?(value.map(&:upcase)) }
  end
end
