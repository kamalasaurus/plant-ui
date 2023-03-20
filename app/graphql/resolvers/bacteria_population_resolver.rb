# frozen_string_literal: true

class BacteriaPopulationResolver < BaseResolver
  type [Types::BacteriaPopulationType], null: false

  scope { BacteriaPopulation.all }

  option(:name, type: String, description: 'select by name') do |scope, value|
    scope.select { |bacteria_population| bacteria_population.name == value.upcase }
  end

  option(:names, type: [String], description: 'select by multiple names') do |scope, value|
    scope.select { |bacteria_population| value.map(&:upcase).include? bacteria_population.name }
  end
end
