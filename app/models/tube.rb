class Tube < ApplicationRecord
  belongs_to :seed
  belongs_to :seedbox

  validates :position, inclusion: { in: 1..100 }

  scope :by_seedbox, -> { joins(:seed).select('bins.*, seeds.*') }

  def self.grouped_by_seedbox
    by_seedbox.each_with_object({}) do |tube, hsh|
      if hsh[tube.seedbox]
        hsh[tube.seedbox][tube.location] = tube
      else
        hsh[tube.seedbox] = { tube.location => tube }
      end
    end
  end

  def critical?
    count.present? and count <= 500
  end
end
