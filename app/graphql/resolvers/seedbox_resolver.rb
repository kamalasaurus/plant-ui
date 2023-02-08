# frozen_string_literal: true

class SeedboxResolver < BaseResolver
  type [Types::SeedboxType], null: false

  scope { Seedbox.all }

  option(:name, type: String, description: 'select by name') do |scope, value|
    scope.where(name: value)
  end

  option(:names, type: [String], description: 'select by multiple names') do |scope, value|
    scope.where(name: value)
  end
end
