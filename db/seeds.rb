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
     .grep(/\d/)
     .sort
     .each do |csv|
    yield csv
    puts "seeded #{csv}"
  end
end

ingest(Rails.root.join('lib', 'assets', 'seed_tubes')) do |csv|
  TubeUpload.parse(File.read(Rails.root.join('lib', 'assets', 'seed_tubes', csv)))
  print 'tubes: '
end

ingest(Rails.root.join('lib', 'assets', 'eco_characterization')) do |csv|
  LocationUpload.parse(File.read(Rails.root.join('lib', 'assets', 'eco_characterization', csv)))
  print 'location: '
end

ingest(Rails.root.join('lib', 'assets', 'eco_characterization')) do |csv|
  LeafCommunityUpload.parse(File.read(Rails.root.join('lib', 'assets', 'eco_characterization', csv)))
  print 'leaf communities: '
end

ingest(Rails.root.join('lib', 'assets', 'eco_characterization')) do |csv|
  RootCommunityUpload.parse(File.read(Rails.root.join('lib', 'assets', 'eco_characterization', csv)))
  print 'root communities: '
end

ingest(Rails.root.join('lib', 'assets', 'eco_characterization')) do |csv|
  PlantNeighborhoodUpload.parse(File.read(Rails.root.join('lib', 'assets', 'eco_characterization', csv)))
  print 'plant neighborhoods: '
end

ingest(Rails.root.join('lib', 'assets', 'samples')) do |csv|
  case csv
  when /freeze/
    PlantSampleUpload.parse_freeze_dried(File.read(Rails.root.join('lib', 'assets', 'samples', csv)))
  when /minus/
    PlantSampleUpload.parse_minus_80(File.read(Rails.root.join('lib', 'assets', 'samples', csv)))
  when /silica/
    PlantSampleUpload.parse_silica(File.read(Rails.root.join('lib', 'assets', 'samples', csv)))
  end
  print 'plant sample: '
end

ingest(Rails.root.join('lib', 'assets', 'cytometry')) do |csv|
  CytometryReadingUpload.parse(File.read(Rails.root.join('lib', 'assets', 'cytometry', csv)))
  print 'cytometry readings: '
end

ingest(Rails.root.join('lib', 'assets', 'bacteria_tubes')) do |csv|
  BacteriaTubeUpload.parse(File.read(Rails.root.join('lib', 'assets', 'bacteria_tubes', csv)))
  print 'bacteria tubes: '
end

puts 'all data seeded!'
