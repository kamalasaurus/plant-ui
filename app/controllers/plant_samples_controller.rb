class PlantSamplesController < ApplicationController
  before_action :set_plant_sample, only: %i[ show edit update destroy ]

  # GET /plant_samples or /plant_samples.json
  def index
    @plant_samples = PlantSample.all
  end

  # GET /plant_samples/1 or /plant_samples/1.json
  def show
  end

  # GET /plant_samples/new
  def new
    @plant_sample = PlantSample.new
  end

  # GET /plant_samples/1/edit
  def edit
  end

  # POST /plant_samples or /plant_samples.json
  def create
    @plant_sample = PlantSample.new(plant_sample_params)

    respond_to do |format|
      if @plant_sample.save
        format.html { redirect_to plant_sample_url(@plant_sample), notice: "Plant sample was successfully created." }
        format.json { render :show, status: :created, location: @plant_sample }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plant_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_samples/1 or /plant_samples/1.json
  def update
    respond_to do |format|
      if @plant_sample.update(plant_sample_params)
        format.html { redirect_to plant_sample_url(@plant_sample), notice: "Plant sample was successfully updated." }
        format.json { render :show, status: :ok, location: @plant_sample }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plant_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_samples/1 or /plant_samples/1.json
  def destroy
    @plant_sample.destroy

    respond_to do |format|
      format.html { redirect_to plant_samples_url, notice: "Plant sample was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_sample
      @plant_sample = PlantSample.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plant_sample_params
      params.require(:plant_sample).permit(:species, :accession, :label, :storage_method, :quantity, :generation, :accession_tray, :replication_tray, :row, :column, :sowing_date, :harvest_date, :seed_id)
    end
end
