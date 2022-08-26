class Tube < ApplicationRecord
  belongs_to :seed
  belongs_to :seedbox

  validates :position, inclusion: { in: 1..100 }

  scope :by_seedbox, -> { joins(:seed).select('tubes.*, seeds.*') }

  def self.grouped_by_seedbox
    by_seedbox.each_with_object({}) do |tube, hsh|
      if hsh[tube.seedbox]
        hsh[tube.seedbox][tube.position] = tube
      else
        hsh[tube.seedbox] = { tube.position => tube }
      end
    end.sort_by { |seedbox, _| seedbox.name.to_i }
  end

  def abbreviation
    seed.abbreviation
  end

  def amount
    if count&.nonzero? then count else "#{volume}mL" end
  end

  def critical?
    count.present? and count <= 500
  end
end
