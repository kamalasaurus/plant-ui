json.extract! seed, :id, :species, :generation, :seedbox, :location, :quantity, :created_at, :updated_at
json.url seed_url(seed, format: :json)
