# frozen_string_literal: true

json.extract! tube, :id, :seed_id, :seedbox_id, :position, :volume, :count, :created_at, :updated_at
json.url tube_url(tube, format: :json)
