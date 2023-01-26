require 'search_object'
require 'search_object/plugin/graphql'

class TubeResolver < BaseResolver
  type [TubeType], null: false

  scope { Tube.all }

  option(:name, type: String)       { |scope, value| scope.where name: value }
  option(:published, type: Boolean) { |scope, value| value ? scope.published : scope.unpublished }
end