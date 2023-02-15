class CreateBacteriaTubes < ActiveRecord::Migration[7.0]
  def change
    create_table :bacteria_tubes do |t|
      t.integer :position
      t.references :bacteria_accession, null: false, foreign_key: true
      t.decimal :volume
      t.bigint :duplicate_bacteria_tubes, array: true, default: []
      t.references :bacteria_box, null: false, foreign_key: true

      t.timestamps
    end
  end
end
