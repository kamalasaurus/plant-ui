json.extract! plant_sample, :id, :species, :accession_id, :label, :storage_method, :quantity, :generation, :accession_tray, :replication_tray, :row, :column, :sowing_date, :harvest_date, :seed_id, :created_at, :updated_at
json.url plant_sample_url(plant_sample, format: :json)
