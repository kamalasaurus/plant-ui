require 'csv'

class CreateRoots < ActiveRecord::Migration[7.0]
  def change
    create_table :roots do |t|
      t.references :population, null: false, foreign_key: true

      headers = CSV.read(Rails.root.join('lib', 'assets', 'eco_characterization', \
        '2022_09_08_eco_characterization.csv'), headers: true, header_converters: :downcase).headers
      columns = headers.filter { |header| /^root_otu/ =~ header }

      columns.each do |column|
        number = column.match(/\d+$/).to_s.to_i
        t.boolean :"root_otu_#{number}"
      end

      t.timestamps
    end
  end
end
