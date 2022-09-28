class CreatePlantNeighborhoods < ActiveRecord::Migration[7.0]
  def change
    create_table :plant_neighborhoods do |t|
      t.references :population, null: false, foreign_key: true

      headers = CSV.read(Rails.root.join('lib', 'assets', 'eco_characterization', \
        '2022_09_08_eco_characterization.csv'), headers: true, header_converters: :downcase).headers
      columns = headers.filter { |header| /^plant_otu/ =~ header }

      columns.each do |column|
        number = column.match(/\d+$/).to_s.to_i
        t.integer :"plant_otu_#{number}"
      end

      other_columns = headers.filter { |header| /^plant_(?!otu)/ =~ header }

      other_columns.each do |column|
        t.float :"#{column}"
      end

      t.timestamps
    end
  end
end
