# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def ingest(directory)
  Dir.new(directory)
    .entries
    .select { |path| /\d/ =~ path }
    .sort
    .each do |csv|
      yield csv
      puts "seeded #{csv}"
    end
end  

ingest(Rails.root.join('lib', 'assets', 'seed_tubes')) do |csv|
  BulkUpload.parse(File.read(Rails.root.join('lib', 'assets', 'seed_tubes', csv)))
end

ingest(Rails.root.join('lib', 'assets', 'eco_characterization')) do |csv|
  EcoUpload.parse(File.read(Rails.root.join('lib', 'assets', 'eco_characterization', csv)))
  print "ecology: "
end

ingest(Rails.root.join('lib', 'assets', 'eco_characterization')) do |csv|
  LeafUpload.parse(File.read(Rails.root.join('lib', 'assets', 'eco_characterization', csv)))
  print "leaves: "
end

puts 'all data seeded!'
