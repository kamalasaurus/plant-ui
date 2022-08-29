# frozen_string_literal: true

class BulkUploadController < ApplicationController
  def index; end

  def create
    respond_to do |format|
      seedstate = BulkUpload.parse(file_params.read)
      if seedstate.success?
        format.html { redirect_to bulk_upload_index_path, notice: 'Database was successfully updated.' }
        format.json { render :index, status: :ok }
      else
        format.html { render :update, status: :unprocessable_entity }
        format.json { render json: seedstate.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def file_params
    params.require(:file)
  end
end
