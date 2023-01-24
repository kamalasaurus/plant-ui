# frozen_string_literal: true

require 'test_helper'

class PlantSamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant_sample = plant_samples(:one)
  end

  test 'should get index' do
    get plant_samples_url
    assert_response :success
  end

  test 'should get new' do
    get new_plant_sample_url
    assert_response :success
  end

  test 'should create plant_sample' do
    assert_difference('PlantSample.count') do
      post plant_samples_url, params: { plant_sample: { accession: @plant_sample.accession, accession_tray: @plant_sample.accession_tray, column: @plant_sample.column, generation: @plant_sample.generation, harvest_date: @plant_sample.harvest_date, label: @plant_sample.label, quantity: @plant_sample.quantity, replication_tray: @plant_sample.replication_tray, row: @plant_sample.row, seed_id: @plant_sample.seed_id, sowing_date: @plant_sample.sowing_date, species: @plant_sample.species, storage_method: @plant_sample.storage_method } }
    end

    assert_redirected_to plant_sample_url(PlantSample.last)
  end

  test 'should show plant_sample' do
    get plant_sample_url(@plant_sample)
    assert_response :success
  end

  test 'should get edit' do
    get edit_plant_sample_url(@plant_sample)
    assert_response :success
  end

  test 'should update plant_sample' do
    patch plant_sample_url(@plant_sample), params: { plant_sample: { accession: @plant_sample.accession, accession_tray: @plant_sample.accession_tray, column: @plant_sample.column, generation: @plant_sample.generation, harvest_date: @plant_sample.harvest_date, label: @plant_sample.label, quantity: @plant_sample.quantity, replication_tray: @plant_sample.replication_tray, row: @plant_sample.row, seed_id: @plant_sample.seed_id, sowing_date: @plant_sample.sowing_date, species: @plant_sample.species, storage_method: @plant_sample.storage_method } }
    assert_redirected_to plant_sample_url(@plant_sample)
  end

  test 'should destroy plant_sample' do
    assert_difference('PlantSample.count', -1) do
      delete plant_sample_url(@plant_sample)
    end

    assert_redirected_to plant_samples_url
  end
end
