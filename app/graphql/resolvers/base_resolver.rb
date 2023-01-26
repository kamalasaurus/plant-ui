require 'search_object'
require 'search_object/plugin/graphql'

class BaseResolver < GraphQL::Schema::Resolver
  include SearchObject.module(:graphql)

  class DateFilter < ::Types::BaseInputObject
    argument :gt, GraphQL::Types::ISO8601DateTime
    argument :lt, GraphQL::Types::ISO8601DateTime
  end

  option :date_created, type: DateFilter, with: date_filter.curry('created_at')
  option :date_updated, type: DateFilter, with: date_filter.curry('updated_at')
  
  def date_filter(field = 'created_at', scope, value)
    lower_bound = value[:gt].strftime('%Y-%m-%d')
    upper_bound = value[:lt].strftime('%Y-%m-%d')
    scope.where("#{field} between '#{lower_bound}' and '#{upper_bound}'")
  end
end