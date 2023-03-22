# frozen_string_literal: true

class SubspeciesResolver < BaseResolver
  type [Types::SubspeciesType], null: false

  scope { Subspecies.all }

  option(:strain, type: String, description: 'select by strain') do |scope, value|
    scope.where(strain: value)
  end

  option(:multiple_strains, type: [String], description: 'select by multiple species') do |scope, value|
    scope.where(strain: value)
  end
end
