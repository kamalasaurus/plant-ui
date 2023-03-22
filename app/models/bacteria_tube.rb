class BacteriaTube < ApplicationRecord
  belongs_to :bacteria_accession
  belongs_to :bacteria_box

  delegate :freezer_rack, to: :bacteria_box
  delegate :freezer, to: :freezer_rack
  delegate :bacteria_population, to: :bacteria_accession

  def duplicates
    BacteriaTube.where(id: duplicate_bacteria_tubes)
  end
end
