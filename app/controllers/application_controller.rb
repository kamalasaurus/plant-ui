# frozen_string_literal: true

class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: ENV.fetch('PRODUCTION_DB_USERNAME'), \
    password: ENV.fetch('PLANT_UI_DATABASE_PASSWORD')
end
