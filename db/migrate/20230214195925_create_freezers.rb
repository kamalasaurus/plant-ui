class CreateFreezers < ActiveRecord::Migration[7.0]
  def change
    create_table :freezers do |t|
      t.string :name

      t.timestamps
    end
  end
end
