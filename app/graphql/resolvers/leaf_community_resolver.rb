# frozen_string_literal: true

class LeafCommunityResolver < BaseResolver
  type [Types::LeafCommunityType], null: false

  scope { LeafCommunity.all }

  option(:population_id, type: Integer, description: 'select by population id') do |scope, value|
    scope.where(population_id: value)
  end

  option(:population_ids, type: [Integer], description: 'select by multiple population ids') do |scope, value|
    scope.where(population_id: value)
  end

  option(:population_name, type: String, description: 'select by population name') do |scope, value|
    scope.includes(:population).select { |leaf| leaf.population.name == value.upcase }
  end

  option(:population_names, type: [String], description: 'select by multiple population names') do |scope, value|
    scope.includes(:population).select { |leaf| value.map(&:upcase).includes? leaf.population.name }
  end

  option(:otu, type: String, description: 'select by an otu') do |scope, value|
    scope.select { |leaf| leaf.otus.include? value.downcase }
  end

  option(:otus, type: [String], description: 'select by a list of otus') do |scope, value|
    scope.select { |leaf| leaf.otus.intersect?(value.map(&:downcase)) }
  end
end
