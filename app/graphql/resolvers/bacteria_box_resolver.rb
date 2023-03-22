# frozen_string_literal: true

class BacteriaBoxResolver < BaseResolver
  type [Types::BacteriaBoxType], null: false

  scope do
    if object.blank?
      BacteriaBox.all
    elsif object.respond_to?(:bacteria_boxes)
      object.bacteria_boxes
    else
      []
    end
  end

  option(:name, type: String, description: 'select by name') do |scope, value|
    scope.select { |bacteria_box| bacteria_box.name == value.upcase }
  end

  option(:names, type: [String], description: 'select by multiple names') do |scope, value|
    scope.select { |bacteria_box| value.map(&:upcase).include? bacteria_box.name }
  end
end
