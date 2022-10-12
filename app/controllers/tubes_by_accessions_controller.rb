require 'csv'

class TubesByAccessionsController < ApplicationController
  before_action :set_tubes_by_accession, only: %i[ show edit update destroy ]

  # GET /tubes_by_accessions or /tubes_by_accessions.json
  def index
  end

  def create
    respond_to do |format|
      tubes = TubesByAccessions.parse(tubes_by_accession_params)
      if tubes.success?
        format.csv { send_data tubes.csv, filename: filename, disposition: 'attachment', type: 'text/csv' }
      else
        format.html { redirect_to tubes_by_accessions_path, status: :unprocessable_entity }
        format.json { render json: tubes.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def tubes_by_accession_params
      params.fetch(:text)
    end

    def filename
      "#{DateTime.now.strftime '%Y_%m_%d'}_tube_positions.csv"
    end
end
