# frozen_string_literal: true

class GenerateCsvController < ApplicationController
  def create
    respond_to do |format|
      csv = GenerateCsv.parse(title_params, tube_params)
      if csv.success?
        send_file csv.path, disposition: 'attachment', notice: 'CSV was successfully generated.'
        # where to redirect to get file?
        # format.html { redirect_to bulk_upload_index_path, notice: 'CSV was successfully generated.' }
        # format.json { render :index, status: :ok }
      else
        format.html { render :update, status: :unprocessable_entity }
        format.json { render json: csv.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def tube_params
    params.permit(selected_tubes: [:id, :item])['selected_tubes'].map(&:to_h)
  end

  def title_params
    params.require(:title)
  end
end