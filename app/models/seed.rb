# frozen_string_literal: true

class Seed < ApplicationRecord
  has_many :bin
  belongs_to :population
  belongs_to :parent, class_name: 'Seed', optional: true
  has_many :children, class_name: 'Seed', foreign_key: 'parent_id'
end
