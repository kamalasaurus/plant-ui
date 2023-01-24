module Mutations
  class CreatePlantSample < BaseMutation
    # arguments passed to the `resolve` method
    argument :accession_id, Integer, required: true
    argument :species_id, Integer, required: true
    argument :label, String, required: true
    argument :storage_method, String, required: true
    argument :quantity, Integer, required: true
    argument :accession_tray, String
    argument :replication_tray, Integer
    argument :row, String
    argument :column, Integer
    argument :sowing_date, GraphQL::Types::ISO8601Date
    argument :harvest_date, GraphQL::Types::ISO8601Date
    argument :seed_ids, [Integer]

    # return type from the mutation
    type Types::PlantSampleType

    def resolve(
      accession_id: nil,
      species_id: nil,
      label: nil,
      storage_method: nil,
      quantity: nil,
      accession_tray: nil,
      replication_tray: nil,
      row: nil,
      column: nil,
      sowing_date: nil,
      harvest_date: nil,
      seed_ids: [],
    )
      plant_sample = PlantSample.create!(
        accession_id: accession_id,
        species_id: species_id,
        label: label,
        storage_method: storage_method,
        quantity: quantity,
        accession_tray: accession_tray,
        replication_tray: replication_tray,
        row: row,
        column: column,
        sowing_date: sowing_date,
        harvest_date: harvest_date,
      )

      seed_ids.each do |seed_id|
        SeedsPlantSample.create!(
          seed_id: seed_id,
          plant_sample_id: plant_sample.id
        )
      end

      plant_sample
    end
  end
end