class BacteriaTube < ApplicationRecord
  belongs_to :bacteria_accession
  belongs_to :bacteria_box
end
