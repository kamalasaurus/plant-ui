class Bin < ApplicationRecord
  belongs_to :seed

  def self.by_seedbox
    joins(:seeds).each_with_object({}) do |bin, hsh|
      if hsh[bin.seedbox]
        hsh[bin.seedbox][bin.location] = bin
      else
        hsh[bin.seedbox] = {bin.location => bin}
      end
    end
  end
end
