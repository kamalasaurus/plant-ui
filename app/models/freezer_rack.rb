class FreezerRack < ApplicationRecord
  belongs_to :freezer
  has_many :bacteria_boxes
end
