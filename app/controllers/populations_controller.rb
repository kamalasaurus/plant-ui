# frozen_string_literal: true

class PopulationsController < ApplicationController
  before_action :set_population, only: %i[show edit update destroy]

  # GET /populations or /populations.json
  def index
    @populations = Population.all
  end

  # GET /populations/1 or /populations/1.json
  def show; end

  # GET /populations/new
  def new
    @population = Population.new
  end

  # GET /populations/1/edit
  def edit; end

  # POST /populations or /populations.json
  def create
    @population = Population.new(population_params)

    respond_to do |format|
      if @population.save
        format.html { redirect_to population_url(@population), notice: 'Population was successfully created.' }
        format.json { render :show, status: :created, location: @population }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @population.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /populations/1 or /populations/1.json
  def update
    respond_to do |format|
      if @population.update(population_params)
        format.html { redirect_to population_url(@population), notice: 'Population was successfully updated.' }
        format.json { render :show, status: :ok, location: @population }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @population.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /populations/1 or /populations/1.json
  def destroy
    @population.destroy

    respond_to do |format|
      format.html { redirect_to populations_url, notice: 'Population was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_population
    @population = Population.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def population_params
    params.require(:population).permit(:name, :location)
  end
end
