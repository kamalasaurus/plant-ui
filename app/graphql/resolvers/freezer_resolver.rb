# frozen_string_literal: true

class FreezerResolver < BaseResolver
  type [Types::FreezerType], null: false

  scope { Freezer.all }

  option(:name, type: String, description: 'select by name') do |scope, value|
    scope.select { |freezer| freezer.name == value.upcase }
  end

  option(:names, type: [String], description: 'select by multiple names') do |scope, value|
    scope.select { |freezer| value.map(&:upcase).include? freezer.name }
  end
end
