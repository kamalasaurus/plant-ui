class AddBelongsToPopulationToSeeds < ActiveRecord::Migration[7.0]
  def change
    add_reference :seeds, :population, foreign_key: true
  end
end
