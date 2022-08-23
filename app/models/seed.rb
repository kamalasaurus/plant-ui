class Seed < ApplicationRecord
  has_many :bin
  belongs_to :parent

  scope :children, -> { where('parent_id = ?', id) }
end
