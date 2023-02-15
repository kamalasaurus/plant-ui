class BacteriaBox < ApplicationRecord
  belongs_to :freezer_rack
  delegate :freezer, to: :freezer_rack
  has_many :bacteria_tubes
end
