# frozen_string_literal: true

class BacteriaLocationResolver < BaseResolver
  type [Types::BacteriaLocationType], null: false

  scope do
    if object.blank?
      BacteriaLocation.all
    elsif object.respond_to?(:bacteria_location)
      [object.bacteria_location]
    else
      []
    end
  end
end
