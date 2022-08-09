class Seed < ApplicationRecord
  def self.by_seedbox
    all.each_with_object({}) do |seed, hsh|
      if hsh[seed.seedbox]
        hsh[seed.seedbox][seed.location] = seed
      else
        hsh[seed.seedbox] = {seed.location => seed}
      end
    end
  end
end
