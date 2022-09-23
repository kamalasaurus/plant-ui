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
        ppt_sp
        nitrogen
        cn
        ph
        phosphore
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
      .transform_keys({
        mat: :mean_annual_temperature,
        mcmt: :mean_coldest_month_temperature,
        ppt_wt: :winter_precipitations,
        ppt_sm: :summer_precipitations,
        ppt_at: :autumn_precipitations,
        ppt_sp: :spring_precipitations,
        cn: :carbon_nitrogen_ratio,
        phosphore: :phosphorus,
        whc: :water_holding_capacity,
        oc: :organic_carbon,
        som: :soil_organic_matter
      })
      # replace cn with cyanide if that is the full name
      # rename phosphore to phosphorus
      # whc, oc, som
      # Frachon 2019, supplementary dataset 5, MBE
      ActiveRecord::Base.transaction do
        population_id = Population.find_by(name: name, subpopulation: subpopulation).id
        attrs.merge({population_id: population_id}) 
        Location.upsert(attrs)
      rescue StandardError => e
        puts e
        puts h
      end
    end
  end
end