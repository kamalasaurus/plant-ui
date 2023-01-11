# frozen_string_literal: true
require 'json_converter'

class GraphQueryController < ApplicationController
  def index
  end

  def to_csv
    respond_to do |format|
      jsonConverter = JsonConverter.new
      csv = jsonConverter.generate_csv json
    rescue => error
      format.html { redirect_to graph_query_path, status: :unprocessable_entity }
      format.json { render json: error.message, status: :unprocessable_entity }
    else
      format.csv { send_data csv, filename: filename, disposition: 'attachment', type: 'text/csv'}
    end
  end

  def json
    params.require(:query).require(:data).to_json
  end

  def filename
    "#{DateTime.now.strftime '%Y_%m_%d'}_graph_query.csv"
  end

end