require 'search_object'
require 'search_object/plugin/graphql'

class BaseResolver < GraphQL::Schema::Resolver
  include SearchObject.module(:graphql)

  class FloatFilter < ::Types::BaseInputObject
    argument :gt, Float
    argument :lt, Float
  end

  class IntegerFilter < ::Types::BaseInputObject
    argument :gt, Integer
    argument :lt, Integer
  end

  class DateFilter < ::Types::BaseInputObject
    argument :gt, String
    argument :lt, String
  end

  option :date_created, type: DateFilter, description: 'use gt and lt to define the bounds of the date' do |scope, value|
    lower_bound = DateTime.parse(value[:gt]).strftime('%Y-%m-%d')
    upper_bound = DateTime.parse(value[:lt]).strftime('%Y-%m-%d')
    scope.where("created_at between '#{lower_bound}' and '#{upper_bound}'")
  end

  option :date_updated, type: DateFilter, description: 'use gt and lt to define the bounds of the date' do |scope, value|
    lower_bound = DateTime.parse(value[:gt]).strftime('%Y-%m-%d')
    upper_bound = DateTime.parse(value[:lt]).strftime('%Y-%m-%d')
    scope.where("updated_at between '#{lower_bound}' and '#{upper_bound}'")
  end

  option(:id, type: ID, description: 'select a single sample by id') do |scope, value|
    scope.where id: value
  end

  option(:ids, type: [ID], description: 'select a multiple samples by id') do |scope, value|
    scope.where id: value
  end
end
