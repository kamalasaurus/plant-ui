# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

most_recent_csv = Dir.new(Rails.root.join('lib','assets')).entries.select { |s| /\d/ =~ s }.sort.pop

BulkUpload.parse(File.read(Rails.root.join('lib', 'assets', most_recent_csv)))
puts 'all data seeded!'
