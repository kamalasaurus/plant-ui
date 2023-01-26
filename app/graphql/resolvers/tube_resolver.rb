class TubeResolver < BaseResolver
  type [Types::TubeType], null: false

  scope { Tube.all }

  option(:id, type: ID)       { |scope, value| scope.where id: value }
end