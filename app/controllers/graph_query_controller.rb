# frozen_string_literal: true

class GraphQueryController < ApplicationController
  def index; end

  def to_csv
    respond_to do |format|
      csv = JsonCsvConverter.call(json)
    rescue StandardError => e
      format.html { redirect_to graph_query_path, status: :unprocessable_entity }
      format.json { render json: e.message, status: :unprocessable_entity }
    else
      format.csv { send_data csv.file, filename:, disposition: 'attachment', type: 'text/csv' }
    end
  end

  def json
    params.require(:query).require(:data).permit!.to_h
  end

  def filename
    "#{DateTime.now.strftime '%Y_%m_%d'}_graph_query.csv"
  end
end
