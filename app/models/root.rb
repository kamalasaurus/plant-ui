class Root < ApplicationRecord
  belongs_to :population

  def otus
    attributes.select { |key, _| /^root_otu/ =~ key }.select { |_, v| v }.keys
  end
end
