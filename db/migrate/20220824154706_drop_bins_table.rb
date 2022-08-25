class DropBinsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :bins
  end
end
