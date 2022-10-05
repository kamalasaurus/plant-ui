# frozen_string_literal: true

json.extract! population, :id, :population_name, :subpopulation, :location, :created_at, :updated_at
json.url population_url(population, format: :json)
