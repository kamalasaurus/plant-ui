require 'csv'

class CreateRootCommunities < ActiveRecord::Migration[7.0]
  def change
    create_table :root_communities do |t|
      t.references :population, null: false, foreign_key: true

      headers = CSV.read(Rails.root.join('lib', 'assets', 'eco_characterization', \
        '2022_09_08_eco_characterization.csv'), headers: true, header_converters: :downcase).headers
      columns = headers.filter { |header| /^root_otu/ =~ header }

      columns.each do |column|
        number = column.match(/\d+$/).to_s.to_i
        t.boolean :"root_otu_#{number}"
      end

      other_columns = headers.filter { |header| /_root$/ =~ header }

      other_columns.each do |column|
        name = column.split('_').rotate(-1)
        name[1], name[2] = name[2], name[1]
        t.float :"#{name.join('_')}"
      end

      t.timestamps
    end
  end
end
