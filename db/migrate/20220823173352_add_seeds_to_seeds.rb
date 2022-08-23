# frozen_string_literal: true

class AddSeedsToSeeds < ActiveRecord::Migration[7.0]
  def change
    add_reference :seeds, :parent, foreign_key: { to_table: :seeds }
  end
end
