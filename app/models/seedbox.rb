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

  def self.grouped_blank_tubes
    all.includes(:tubes).map.with_object({}) do |seedbox, hsh|
      hsh[seedbox.name] = (1..100).to_a - seedbox.tubes.map(&:position)
    end
       .sort_by { |name, _| name.to_i }
       .to_h
  end
end
