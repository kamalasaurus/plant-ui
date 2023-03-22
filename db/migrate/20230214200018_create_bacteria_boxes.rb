class CreateBacteriaBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :bacteria_boxes do |t|
      t.references :freezer_rack, null: false, foreign_key: true
      t.integer :name

      t.timestamps
    end
  end
end
