# frozen_string_literal: true

class AddAccessionToSeeds < ActiveRecord::Migration[7.0]
  def change
    add_column :seeds, :accession, :string
  end
end
