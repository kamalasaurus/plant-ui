# frozen_string_literal: true

class CreateCytometryReadings < ActiveRecord::Migration[7.0]
  def change
    create_table :cytometry_readings do |t|
      t.references :accession, null: false, foreign_key: true
      t.integer :minimum_peak
      t.float :mean_f2
      t.integer :peak_pattern, array: true, default: []
      t.integer :chromosome_count, array: true, default: []
      t.boolean :chromosome_count_certain

      t.timestamps
    end
  end
end
