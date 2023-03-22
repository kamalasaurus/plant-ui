class CreateBacteriaAccessions < ActiveRecord::Migration[7.0]
  def change
    create_table :bacteria_accessions do |t|
      t.references :bacteria_population, null: false, foreign_key: true
      t.string :date_collected
      t.boolean :wild
      t.string :organ_tissue
      t.string :comment
      t.string :curator
      t.references :species, foreign_key: true
      t.references :source_species, foreign_key: { to_table: :species }
      t.string :source_number
      t.string :sample_identity

      t.timestamps
    end
  end
end
