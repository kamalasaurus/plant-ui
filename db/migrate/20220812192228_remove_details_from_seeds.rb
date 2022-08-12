class RemoveDetailsFromSeeds < ActiveRecord::Migration[7.0]
  def change
    remove_column :seeds, :seedbox, :string
    remove_column :seeds, :location, :integer
    remove_column :seeds, :quantity, :integer
  end
end
