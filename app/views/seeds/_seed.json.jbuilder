# frozen_string_literal: true

json.extract! seed, :id, :species, :generation, :parent_id, :accession, :created_at, :updated_at
json.url seed_url(seed, format: :json)
