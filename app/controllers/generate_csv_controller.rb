# frozen_string_literal: true
require 'csv'

class GenerateCsvController < ApplicationController
  def create
    respond_to do |format|
      csv = GenerateCsv.generate(tubes)
      if csv.success?
        format.csv { send_data csv.file, filename: filename, disposition: 'attachment', type: 'text/csv'}
      else
        format.html { redirect_to tubes_index_path, status: :unprocessable_entity }
        format.json { render json: csv.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def tube_params
    params.require(:generate_csv).permit(:title, selected_tubes: [:id, :item])
  end

  def tubes
    tube_params['selected_tubes'].map(&:to_h)
  end

  def filename
    "#{DateTime.now.strftime '%Y_%m_%d'}_#{tube_params['title'].parameterize.underscore}.csv"
  end
end