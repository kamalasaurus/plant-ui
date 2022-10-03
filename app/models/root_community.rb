class RootCommunity < ApplicationRecord
  belongs_to :population

  def otus
    attributes.select { |key, _| /^root_otu/ =~ key }.select { |_, v| v }.keys
  end

  def pathobiota
    attributes.select { |key, _| /^root_pathobiota/ =~ key }
  end

  def microbiota
    attributes.select { |key, _| /^root_microbiota/ =~ key }
  end
end
