# frozen_string_literal: true

class ChangePopulationsNameToPopulation < ActiveRecord::Migration[7.0]
  def change
    rename_column :populations, :name, :population_name
  end
end
