# frozen_string_literal: true

class CreateSeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :seeds do |t|
      t.string :species
      t.integer :generation

      t.timestamps
    end
  end
end
