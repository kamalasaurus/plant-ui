class TubeResolver < BaseResolver
  type [Types::TubeType], null: false

  scope { Tube.all }

  option(:critical, type: Boolean, description: 'select if count is critical') do |scope, value|
    scope.select { |tube| tube.critical? == value }
  end
end