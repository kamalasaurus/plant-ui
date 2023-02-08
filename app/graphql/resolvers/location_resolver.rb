# frozen_string_literal: true

class LocationResolver < BaseResolver
  type [Types::LocationType], null: false

  scope { Location.all }

  option :elevation, type: Integer, description: 'select by elevation' do |scope, value|
    scope.where(elevation: value)
  end

  option :elevations, type: [Integer], description: 'select by multiple elevations' do |scope, value|
    scope.where(elevation: value)
  end

  option :elevation_range, type: IntegerFilter, description: 'use gt and lt to define the bounds of the elevation' do |scope, _value|
    scope.where("elevation between #{gt} and #{lt}")
  end

  # this is a bit of meta-programming to define the same filters as above (but for Floats) for all the fields
  # of a location entry
  %i[
    latitude
    longitude
    mean_annual_temperature
    mean_coldest_month_temperature
    winter_precipitations
    summer_precipitations
    autumn_precipitations
    spring_precipitations
    nitrogen
    carbon_nitrogen_ratio
    ph
    phosphorus
    calcium
    magnesium
    sodium
    potassium
    iron
    aluminium
    water_holding_capacity
    organic_carbon
    soil_organic_matter
    manganese
  ].each do |element|
    plural = if %i[latitude longitude mean_annual_temperature mean_coldest_month_temperature].include? element
               element.to_s.pluralize.to_sym
             else
               "#{element}_amounts".to_sym
             end

    option element, type: Float, description: "select by #{element}" do |scope, value|
      scope.where(element => value)
    end

    option plural, type: [Float], description: "select by multiple #{plural.to_s.split('_')}" do |scope, value|
      scope.where(element => value)
    end

    option "#{element}_range".to_sym, type: FloatFilter, description: "use gt and lt to define the bounds of the #{element}" do |scope, _value|
      scope.where("#{element} between #{gt} and #{lt}")
    end
  end

  option(:population_id, type: Integer, description: 'select by population id') do |scope, value|
    scope.where(population_id: value)
  end

  option(:population_ids, type: [Integer], description: 'select by multiple population ids') do |scope, value|
    scope.where(population_id: value)
  end

  option(:population_name, type: String, description: 'select by population name') do |scope, value|
    scope.select { |location| location.population.name == value.upcase }
  end

  option(:population_names, type: [String], description: 'select by multiple population names') do |scope, value|
    scope.select { |location| value.map(&:upcase).include? location.population.name }
  end
end
