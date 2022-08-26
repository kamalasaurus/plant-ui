# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

BulkUpload.parse(File.read(Rails.root.join('lib', 'assets', 'all_seed_tubes_2022_08_23.csv')))
puts 'all data seeded!'