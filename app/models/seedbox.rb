# frozen_string_literal: true

class Seedbox < ApplicationRecord
  has_many :tubes

  def self.grouped_tubes
    all.includes(:tubes).map.with_object({}) do |seedbox, hsh|
      hsh[seedbox] = seedbox.tubes.map.with_object({}) do |tube, box|
        box[tube.position] = tube
      end
    end
       .sort_by { |seedbox, _| seedbox.name.to_i }
       .to_h
  end
end
