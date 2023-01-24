# frozen_string_literal: true

class SeedsPlantSample < ApplicationRecord
  belongs_to :seed
  belongs_to :plant_sample
end
