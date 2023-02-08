# frozen_string_literal: true

class PopulationResolver < BaseResolver
  type [Types::PopulationType], null: false

  scope { Population.all }

  option(:name, type: String, description: 'select by name') do |scope, value|
    scope.select { |population| population.name == value.upcase }
  end

  option(:names, type: [String], description: 'select by multiple names') do |scope, value|
    scope.select { |population| value.map(&:upcase).include? population.name }
  end
end
