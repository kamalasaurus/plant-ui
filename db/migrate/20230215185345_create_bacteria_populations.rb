class CreateBacteriaPopulations < ActiveRecord::Migration[7.0]
  def change
    create_table :bacteria_populations do |t|
      t.string :name

      t.timestamps
    end
  end
end
