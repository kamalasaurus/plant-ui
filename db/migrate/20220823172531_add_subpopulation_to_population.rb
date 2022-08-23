# frozen_string_literal: true

class AddSubpopulationToPopulation < ActiveRecord::Migration[7.0]
  def change
    add_column :populations, :subpopulation, :string
  end
end
