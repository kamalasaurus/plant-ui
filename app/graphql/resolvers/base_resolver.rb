require 'search_object'
require 'search_object/plugin/graphql'

class BaseResolver < GraphQL::Schema::Resolver
  include SearchObject.module(:graphql)

  class DateFilter < ::Types::BaseInputObject
    argument :gt, String
    argument :lt, String
  end

  # binding.pry

  option :date_created, type: DateFilter do |scope, value|
    lower_bound = DateTime.parse(value[:gt]).strftime('%Y-%m-%d')
    upper_bound = DateTime.parse(value[:lt]).strftime('%Y-%m-%d')
    scope.where("created_at between '#{lower_bound}' and '#{upper_bound}'")
  end

  option :date_updated, type: DateFilter do |scope, value|
    lower_bound = DateTime.parse(value[:gt]).strftime('%Y-%m-%d')
    upper_bound = DateTime.parse(value[:lt]).strftime('%Y-%m-%d')
    scope.where("updated_at between '#{lower_bound}' and '#{upper_bound}'")
  end
end