# frozen_string_literal: true

class Tube < ApplicationRecord
  belongs_to :seed
  belongs_to :seedbox

  validates :position, inclusion: { in: 1..100 }


  def self.grouped_by_seedbox
    Seedbox.all.map.with_object({}) do |seedbox, hsh|
      hsh[seedbox] = seedbox.tubes.sort_by { |tube| tube.position }
    end
    .sort_by { |seedbox, _| seedbox.name.to_i }
    .to_h
  end

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
      #{seed.species.split('-').join(' ')} \
      #{seedbox.name} \
      #{abbreviation} \
      compRgene
    ITEM
  end
end
