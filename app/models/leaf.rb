class Leaf < ApplicationRecord
  belongs_to :population

  def otus
    attributes.select { |key, _| /^leaf_otu/ =~ key }.select { |_, v| v }.keys
  end
end
