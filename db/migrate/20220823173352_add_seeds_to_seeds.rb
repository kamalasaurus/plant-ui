class AddSeedsToSeeds < ActiveRecord::Migration[7.0]
  def change
    add_reference :seeds, :parent, null: true, foreign_key: true
  end
end
