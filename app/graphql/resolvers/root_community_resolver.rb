# frozen_string_literal: true

class RootCommunityResolver < BaseResolver
  type [Types::RootCommunityType], null: false

  scope { RootCommunity.all }

  option(:population_id, type: Integer, description: 'select by population id') do |scope, value|
    scope.where(population_id: value)
  end

  option(:population_ids, type: [Integer], description: 'select by multiple population ids') do |scope, value|
    scope.where(population_id: value)
  end

  option(:population_name, type: String, description: 'select by population name') do |scope, value|
    scope.includes(:population).select { |root| root.population.name == value.upcase }
  end

  option(:population_names, type: [String], description: 'select by multiple population names') do |scope, value|
    scope.includes(:population).select { |root| value.map(&:upcase).includes? root.population.name }
  end

  option(:otu, type: String, description: 'select by an otu') do |scope, value|
    scope.select { |root| root.otus.include? value.downcase }
  end

  option(:otus, type: [String], description: 'select by a list of otus') do |scope, value|
    scope.select { |root| !!root.otus.intersect?(value.map(&:downcase)) } # single ampersand intersects arrays in ruby!
  end
end
