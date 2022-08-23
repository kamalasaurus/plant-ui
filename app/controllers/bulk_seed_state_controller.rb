# frozen_string_literal: true

class BulkSeedStateController < ApplicationController
  def index; end

  def update(_file)
    respond_to do |format|
      if (@seedstate = BulkSeedState.upload(bulk_seed_state_params))
        format.html { redirect_to :index, notice: 'Database was successfully updated.' }
        format.json { render :index, status: :ok }
      else
        format.html { render :update, status: :unprocessable_entity }
        format.json { render json: @seedstate.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def bulk_seed_state_params
    params.require(:bulk_seed_state).permit(:file)
  end
end
