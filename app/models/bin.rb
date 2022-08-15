class Bin < ApplicationRecord
  belongs_to :seed

  scope :by_seedbox, -> { joins(:seed).select('bins.*, seeds.*') }
  validates :quantity, inclusion: { in: 1..100 }

  def self.grouped_by_seedbox
    by_seedbox.each_with_object({}) do |bin, hsh|
      if hsh[bin.seedbox]
        hsh[bin.seedbox][bin.location] = bin
      else
        hsh[bin.seedbox] = {bin.location => bin}
      end
    end
  end
end
