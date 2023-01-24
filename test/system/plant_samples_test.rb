# frozen_string_literal: true

require 'application_system_test_case'

class PlantSamplesTest < ApplicationSystemTestCase
  setup do
    @plant_sample = plant_samples(:one)
  end

  test 'visiting the index' do
    visit plant_samples_url
    assert_selector 'h1', text: 'Plant samples'
  end

  test 'should create plant sample' do
    visit plant_samples_url
    click_on 'New plant sample'

    fill_in 'Accession', with: @plant_sample.accession
    fill_in 'Accession tray', with: @plant_sample.accession_tray
    fill_in 'Column', with: @plant_sample.column
    fill_in 'Generation', with: @plant_sample.generation
    fill_in 'Harvest date', with: @plant_sample.harvest_date
    fill_in 'Label', with: @plant_sample.label
    fill_in 'Quantity', with: @plant_sample.quantity
    fill_in 'Replication tray', with: @plant_sample.replication_tray
    fill_in 'Row', with: @plant_sample.row
    fill_in 'Seed', with: @plant_sample.seed_id
    fill_in 'Sowing date', with: @plant_sample.sowing_date
    fill_in 'Species', with: @plant_sample.species
    fill_in 'Storage method', with: @plant_sample.storage_method
    click_on 'Create Plant sample'

    assert_text 'Plant sample was successfully created'
    click_on 'Back'
  end

  test 'should update Plant sample' do
    visit plant_sample_url(@plant_sample)
    click_on 'Edit this plant sample', match: :first

    fill_in 'Accession', with: @plant_sample.accession
    fill_in 'Accession tray', with: @plant_sample.accession_tray
    fill_in 'Column', with: @plant_sample.column
    fill_in 'Generation', with: @plant_sample.generation
    fill_in 'Harvest date', with: @plant_sample.harvest_date
    fill_in 'Label', with: @plant_sample.label
    fill_in 'Quantity', with: @plant_sample.quantity
    fill_in 'Replication tray', with: @plant_sample.replication_tray
    fill_in 'Row', with: @plant_sample.row
    fill_in 'Seed', with: @plant_sample.seed_id
    fill_in 'Sowing date', with: @plant_sample.sowing_date
    fill_in 'Species', with: @plant_sample.species
    fill_in 'Storage method', with: @plant_sample.storage_method
    click_on 'Update Plant sample'

    assert_text 'Plant sample was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Plant sample' do
    visit plant_sample_url(@plant_sample)
    click_on 'Destroy this plant sample', match: :first

    assert_text 'Plant sample was successfully destroyed'
  end
end
