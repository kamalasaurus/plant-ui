class CreateSeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :seeds do |t|
      t.string :species
      t.integer :generation
      t.string :seedbox
      t.integer :location
      t.integer :quantity

      t.timestamps
    end
  end
end
