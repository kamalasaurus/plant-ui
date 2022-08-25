# frozen_string_literal: true

json.extract! seedbox, :id, :name, :created_at, :updated_at
json.url seedbox_url(seedbox, format: :json)
