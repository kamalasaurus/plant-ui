class Leaf < ApplicationRecord
  belongs_to :population

  def otus
    attributes.select { |key, _| /^OTU/ =~ key }
  end
end
