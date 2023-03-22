# frozen_string_literal: true

task :create_db_dump do
  desc 'This task creates a db dump to upload to google cloud in ./lib/db_dumps -- the highest number suffix is the most recent dump'

  dump_number = Dir["./lib/db_dumps/**/*"].count + 1

  sh "pg_dump -U plant_ui --no-owner --no-acl plant_ui_development > plant_ui_production_#{dump_number}.sql"

  puts "dumped db with name plant_ui_production_#{dump_number}.sql!"

  sh "mv plant_ui_production_#{dump_number}.sql ./lib/db_dumps/"

  puts "moved dump to ./lib/db_dumps"
end
