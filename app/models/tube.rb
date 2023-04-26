# frozen_string_literal: true

class Tube < ApplicationRecord
  belongs_to :seed
  belongs_to :seedbox
  delegate :species, to: :seed

  validates :position, inclusion: { in: 1..100 }

  def abbreviation
    seed.abbreviation
  end

  def amount
    count&.nonzero? ? count : "#{volume}mL"
  end

  def critical?
    count.present? and count <= 500
  end

  # flex_item is for building the flexsearch.js index on the client
  # the index is built when the /tubes page is loaded and should make
  # it easy to filter by all relevant information.  flex_item represents
  # the searchable document.  Future extensions might be including the
  # name of the project group to easily filter by concerns
  def flex_item
    <<~ITEM.chomp
      #{seed.species.genus} #{seed.species.species} \
      #{seedbox.name} \
      #{abbreviation} \
      compRgene
    ITEM
  end
end
