# frozen_string_literal: true

require 'csv'

module EcoUpload
  def self.parse(file)
    CSV.parse(file, headers: true, header_converters: %i[downcase symbolize]) do |row|
      h = row.to_h
      name, subpopulation = h[:population].split('-')
      attrs = h.slice(*%i[
        latitude
        longitude
        elevation
        mat
        mcmt
        ppt_wt
        ppt_sm
        ppt_at
        nitrogen
        cn
        ph
        phosphorus
        calcium
        magnesium
        sodium
        potassium
        iron
        aluminium
        whc
        oc
        som
        manganese
      ])
      # replace cn with cyanide if that is the full name
      # rename phosphore to phosphorus
      # whc, oc, som
      ActiveRecord::Base.transaction do
        Population
          .find_by(name: name, subpopulation: subpopulation)
          .tap { |pop| pop.update! attrs }
      rescue StandardError => e
        puts e
        puts h
      end
    end
  end
end