# frozen_string_literal: true

class CreateSeedboxes < ActiveRecord::Migration[7.0]
  def change
    create_table :seedboxes do |t|
      t.string :name

      t.timestamps
    end
  end
end
