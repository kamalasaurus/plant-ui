require 'search_object'
require 'search_object/plugin/graphql'

class BaseResolver < GraphQL::Schema::Resolver
  include SearchObject.module(:graphql)

  class DateFilter < ::Types::BaseInputObject
    argument :gt, String
    argument :lt, String
  end

  option :date_created, type: DateFilter, with: date_filter.curry('created_at'), description: 'filter with {gt: new Date(), lt: new Date()}'
  option :date_updated, type: DateFilter, with: date_filter.curry('updated_at'), description: 'filter with {gt: new Date(), lt: new Date()}'
  
  def date_filter(field = 'created_at', scope, value)
    lower_bound = DateTime.parse(value[:gt]).strftime('%Y-%m-%d')
    upper_bound = DateTime.parse(value[:lt]).strftime('%Y-%m-%d')
    scope.where("#{field} between '#{lower_bound}' and '#{upper_bound}'")
  end
end