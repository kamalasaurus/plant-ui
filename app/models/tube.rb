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

  # flex_id and flex_item arefor building the flexsearch.js index on the client
  # the index is built when the /tubes page is loaded and should make it easy to filter
  # by all relevant information.  flex_item represents the searchable document.  Future
  # extensions might be including the name of the project group to easily filter by concerns
  def flex_id
    "#{seedbox.name}-#{position}"
  end

  def flex_item
    "#{seed.species.split('-').join(' ')} #{seedbox.name} #{abbreviation.split('-').join(' ')} compRgene"
  end
end
