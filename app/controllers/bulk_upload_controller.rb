# frozen_string_literal: true

class BulkUploadController < ApplicationController
  def index; end

  def create
    time = DateTime.now.strftime '%Y_%m_%d_'
    File.open(Rails.root.join('public', 'uploads', time, file_params.original_filename), 'wb') do |file|
      file.write(file_params.read)
      respond_to do |format|
        if (seedstate = BulkUpload.parse(file_params.read))
          format.html { redirect_to bulk_upload_index_path, notice: 'Database was successfully updated.' }
          format.json { render :index, status: :ok }
        else
          format.html { render :update, status: :unprocessable_entity }
          format.json { render json: seedstate.errors, status: :unprocessable_entity }
        end
      end
    rescue Exception => e
      respond_to do |format|
        format.html { render :update, status: :unprocessable_entity }
        format.json { render json: e, status: :unprocessable_entity }
      end
  end
  end

  private

  def file_params
    params.require(:file)
  end
end
