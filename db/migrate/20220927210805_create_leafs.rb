require 'csv'

class CreateLeafs < ActiveRecord::Migration[7.0]
  def change
    create_table :leafs do |t|
      t.references :population, null: false, foreign_key: true

      headers = CSV.read(Rails.root.join('lib', 'assets', 'eco_characterization', \
        '2022_09_08_eco_characterization.csv'), headers: true, header_converters: :downcase).headers
      columns = headers.filter { |header| /^leaf_otu/ =~ header }

      columns.each do |column|
        number = column.match(/\d+$/).to_s.to_i
        t.boolean :"OTU_#{number}"
      end

      t.timestamps
    end
  end
end
