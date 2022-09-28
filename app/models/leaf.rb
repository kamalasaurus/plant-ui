class Leaf < ApplicationRecord
  belongs_to :population

  def otus
    attributes.select { |key, _| /^leaf_otu/ =~ key }.select { |_, v| v }.keys
  end

  def pathobiota
    attributes.select { |key, _| /^leaf_pathobiota/ =~ key }
  end

  def microbiota
    attributes.select { |key, _| /^leaf_microbiota/ =~ key }
  end
end
