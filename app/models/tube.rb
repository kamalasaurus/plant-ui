class Tube < ApplicationRecord
  belongs_to :seed
  belongs_to :seedbox

  scope :by_seedbox, -> { joins(:seed).select('bins.*, seeds.*') }
  validates :quantity, inclusion: { in: 1..100 }

  def self.grouped_by_seedbox
    # seedbox.tubes.each_with_object ...
    by_seedbox.each_with_object({}) do |tube, hsh|
      if hsh[tube.seedbox]
        hsh[tube.seedbox][tube.location] = tube
      else
        hsh[tube.seedbox] = { tube.location => tube }
      end
    end
  end
end
