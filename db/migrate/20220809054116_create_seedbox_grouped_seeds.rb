class CreateSeedboxGroupedSeeds < ActiveRecord::Migration[7.0]
  def change
    create_view :seedbox_grouped_seeds
  end
end
