# frozen_string_literal: true

require 'csv'

module EcoUpload
  def self.parse(file)
    CSV.parse(file, headers: true, header_converters: %i[downcase]) do |row|
      h = row.to_h.deep_symbolize_keys
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
      # Frachon 2019, supplementary dataset 5, MBE
      ActiveRecord::Base.transaction do
        population_id = Population.create_or_find_by(name: name, subpopulation: subpopulation).id
        Location.upsert(attrs.merge({population_id: population_id}))
      rescue StandardError => e
        puts e
        puts h
      end
    end
  end
end