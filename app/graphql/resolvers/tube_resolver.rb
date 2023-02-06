class TubeResolver < BaseResolver
  type [Types::TubeType], null: false

  scope { Tube.all }

  class CountFilter < ::Types::BaseInputObject
    argument :gt, Integer
    argument :lt, Integer
  end

  class VolumeFilter < ::Types::BaseInputObject
    argument :gt, Float
    argument :lt, Float
  end

  option(:seedbox_id, type: Integer, description: 'select by seedbox id') do |scope, value|
    scope.where(seedbox_id: value)
  end

  option(:seedbox_ids, type: [Integer], description: 'select by multiple seedbox ids') do |scope, value|
    scope.where(seedbox_id: value)
  end

  option(:seedbox_name, type: Integer, description: 'select by seedbox name') do |scope, value|
    scope.includes(:seedbox).where("seedbox.name is #{value}")
  end

  option(:seedbox_names, type: [Integer], description: 'select by seedbox name') do |scope, value|
    scope.includes(:seedbox).where("seedbox.name in #{value}")
  end

  option(:position, type: Integer, description: 'select by position') do |scope, value|
    scope.where(position: value)
  end

  option(:positions, type: [Integer], description: 'select by multiple positions') do |scope, value|
    scope.where(position: value)
  end

  option(:count, type: Integer, description: 'upper and lower bound for the count') do |scope, value|
    scope.where(count: value)
  end

  option(:count_range, type: CountFilter, description: 'upper and lower bound for the count') do |scope, value|
    scope.where("count between #{value[:lt]} and #{value[:gt]}")
  end

  option(:volume, type: Float, description: 'upper and lower bound for the count') do |scope, value|
    scope.where(volume: value)
  end

  option(:volume_range, type: VolumeFilter, description: 'upper and lower bound for the volume') do |scope, value|
    scope.where("volume between #{value[:lt]} and #{value[:gt]}")
  end

  option(:critical, type: Boolean, description: 'select if count is critical') do |scope, value|
    scope.select { |tube| tube.critical? == value }
  end
end