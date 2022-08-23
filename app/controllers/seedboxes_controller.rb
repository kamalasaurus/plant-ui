class SeedboxesController < ApplicationController
  before_action :set_seedbox, only: %i[show edit update destroy]

  # GET /seedboxes or /seedboxes.json
  def index
    @seedboxes = Seedbox.all
  end

  # GET /seedboxes/1 or /seedboxes/1.json
  def show; end

  # GET /seedboxes/new
  def new
    @seedbox = Seedbox.new
  end

  # GET /seedboxes/1/edit
  def edit; end

  # POST /seedboxes or /seedboxes.json
  def create
    @seedbox = Seedbox.new(seedbox_params)

    respond_to do |format|
      if @seedbox.save
        format.html { redirect_to seedbox_url(@seedbox), notice: 'Seedbox was successfully created.' }
        format.json { render :show, status: :created, location: @seedbox }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @seedbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seedboxes/1 or /seedboxes/1.json
  def update
    respond_to do |format|
      if @seedbox.update(seedbox_params)
        format.html { redirect_to seedbox_url(@seedbox), notice: 'Seedbox was successfully updated.' }
        format.json { render :show, status: :ok, location: @seedbox }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @seedbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seedboxes/1 or /seedboxes/1.json
  def destroy
    @seedbox.destroy

    respond_to do |format|
      format.html { redirect_to seedboxes_url, notice: 'Seedbox was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_seedbox
    @seedbox = Seedbox.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def seedbox_params
    params.require(:seedbox).permit(:name)
  end
end
