# frozen_string_literal: true

json.extract! seed, :id, :species_id, :generation, :parent_id, :accession_id, :created_at, :updated_at
json.url seed_url(seed, format: :json)
