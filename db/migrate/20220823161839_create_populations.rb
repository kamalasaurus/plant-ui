class CreatePopulations < ActiveRecord::Migration[7.0]
  def change
    create_table :populations do |t|
      t.string :name
      t.point :location

      t.timestamps
    end
  end
end
