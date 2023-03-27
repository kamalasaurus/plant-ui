# frozen_string_literal: true

class BacteriaTubeResolver < BaseResolver
  type '[Types::BacteriaTubeType]', null: false

  scope do
    if object.blank?
      BacteriaTube.all
    elsif object.respond_to?(:bacteria_tubes)
      object.bacteria_tubes
    else
      []
    end
  end

  option(:freezer_id, type: Integer, description: 'select by freezer id') do |scope, value|
    scope.where(freezer_id: value)
  end

  option(:freezer_ids, type: [Integer], description: 'select by multiple freezer ids') do |scope, value|
    scope.where(freezer_id: value)
  end

  option(:freezer_name, type: String, description: 'select by freezer name') do |scope, value|
    scope.includes(:freezer).where("freezer.name is #{value}")
  end

  option(:freezer_names, type: [String], description: 'select by multiple freezer names') do |scope, value|
    scope.includes(:freezer).where("freezer.name in #{value}")
  end

  option(:freezer_rack_id, type: Integer, description: 'select by freezer rack id') do |scope, value|
    scope.where(freezer_rack_id: value)
  end

  option(:freezer_rack_ids, type: [Integer], description: 'select by multiple freezer rack ids') do |scope, value|
    scope.where(freezer_rack_id: value)
  end

  option(:freezer_rack_name, type: String, description: 'select by freezer rack name') do |scope, value|
    scope.includes(:freezer_rack).where("freezer_rack.name is #{value}")
  end

  option(:freezer_rack_names, type: [String], description: 'select by multiple freezer rack names') do |scope, value|
    scope.includes(:freezer_rack).where("freezer_rack.name in #{value}")
  end

  option(:bacteria_population_id, type: Integer, description: 'select by bacteria population id') do |scope, value|
    scope.where(bacteria_population_id: value)
  end

  option(:bacteria_population_ids, type: [Integer], description: 'select by multiple bacteria population ids') do |scope, value|
    scope.where(bacteria_population_id: value)
  end

  option(:bacteria_population_name, type: String, description: 'select by bacteria population name') do |scope, value|
    scope.includes(:bacteria_population).where("bacteria_population.name is #{value}")
  end

  option(:bacteria_population_names, type: [String], description: 'select by multiple bacteria population names') do |scope, value|
    scope.includes(:bacteria_population).where("bacteria_population.name in #{value}")
  end

  option(:bacteria_accession_id, type: Integer, description: 'select by bacteria accession id') do |scope, value|
    scope.where(bacteria_accession_id: value)
  end

  option(:bacteria_accession_ids, type: [Integer], description: 'select by multiple bacteria accession ids') do |scope, value|
    scope.where(bacteria_accession_id: value)
  end

  option(:bacteria_accession_name, type: String, description: 'select by bacteria accession name') do |scope, value|
    scope.includes(:bacteria_accession).where("bacteria_accession.name is #{value}")
  end

  option(:bacteria_accession_names, type: [String], description: 'select by multiple bacteria accession names') do |scope, value|
    scope.includes(:bacteria_accession).where("bacteria_accession.name in #{value}")
  end

  option(:bacteria_box_id, type: Integer, description: 'select by bacteria box id') do |scope, value|
    scope.where(bacteria_box_id: value)
  end

  option(:bacteria_box_ids, type: [Integer], description: 'select by multiple bacteria box ids') do |scope, value|
    scope.where(bacteria_box_id: value)
  end

  option(:bacteria_box_name, type: String, description: 'select by bacteria box name') do |scope, value|
    scope.includes(:bacteria_box).where("bacteria_box.name is #{value}")
  end

  option(:bacteria_box_names, type: [String], description: 'select by multiple bacteria box names') do |scope, value|
    scope.includes(:bacteria_box).where("bacteria_box.name in #{value}")
  end

  option(:position, type: Integer, description: 'select by position') do |scope, value|
    scope.where(position: value)
  end

  option(:positions, type: [Integer], description: 'select by multiple positions') do |scope, value|
    scope.where(position: value)
  end

  option(:volume, type: Float, description: 'upper and lower bound for the count') do |scope, value|
    scope.where(volume: value)
  end

  option(:volume_range, type: FloatFilter, description: 'upper and lower bound for the volume') do |scope, value|
    scope.where("volume between #{value[:lt]} and #{value[:gt]}")
  end
end
