# frozen_string_literal: true

class FreezerRackResolver < BaseResolver
  type [Types::FreezerRackType], null: false

  scope do
    if object.blank?
      FreezerRack.all
    elsif object.respond_to?(:freezer_racks)
      object.freezer_racks
    else
      []
    end
  end

  option(:name, type: String, description: 'select by name') do |scope, value|
    scope.select { |freezer_rack| freezer_rack.name == value.upcase }
  end

  option(:names, type: [String], description: 'select by multiple names') do |scope, value|
    scope.select { |freezer_rack| value.map(&:upcase).include? freezer_rack.name }
  end
end
