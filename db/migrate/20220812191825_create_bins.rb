class CreateBins < ActiveRecord::Migration[7.0]
  def change
    create_table :bins do |t|
      t.references :seed, null: false, foreign_key: true
      t.string :seedbox
      t.integer :location
      t.integer :quantity

      t.timestamps
    end
  end
end
