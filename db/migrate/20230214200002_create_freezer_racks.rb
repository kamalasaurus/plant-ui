class CreateFreezerRacks < ActiveRecord::Migration[7.0]
  def change
    create_table :freezer_racks do |t|
      t.references :freezer, null: false, foreign_key: true
      t.integer :name

      t.timestamps
    end
  end
end
