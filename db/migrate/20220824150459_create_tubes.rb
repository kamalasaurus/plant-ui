# frozen_string_literal: true

class CreateTubes < ActiveRecord::Migration[7.0]
  def change
    create_table :tubes do |t|
      t.references :seed, null: false, foreign_key: true
      t.references :seedbox, null: false, foreign_key: true
      t.integer :position
      t.integer :volume
      t.integer :count

      t.timestamps
    end
  end
end
