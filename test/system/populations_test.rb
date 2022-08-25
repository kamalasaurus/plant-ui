# frozen_string_literal: true

require 'application_system_test_case'

class PopulationsTest < ApplicationSystemTestCase
  setup do
    @population = populations(:one)
  end

  test 'visiting the index' do
    visit populations_url
    assert_selector 'h1', text: 'Populations'
  end

  test 'should create population' do
    visit populations_url
    click_on 'New population'

    fill_in 'Location', with: @population.location
    fill_in 'Name', with: @population.name
    click_on 'Create Population'

    assert_text 'Population was successfully created'
    click_on 'Back'
  end

  test 'should update Population' do
    visit population_url(@population)
    click_on 'Edit this population', match: :first

    fill_in 'Location', with: @population.location
    fill_in 'Name', with: @population.name
    click_on 'Update Population'

    assert_text 'Population was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Population' do
    visit population_url(@population)
    click_on 'Destroy this population', match: :first

    assert_text 'Population was successfully destroyed'
  end
end
