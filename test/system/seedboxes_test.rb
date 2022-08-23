# frozen_string_literal: true

require 'application_system_test_case'

class SeedboxesTest < ApplicationSystemTestCase
  setup do
    @seedbox = seedboxes(:one)
  end

  test 'visiting the index' do
    visit seedboxes_url
    assert_selector 'h1', text: 'Seedboxes'
  end

  test 'should create seedbox' do
    visit seedboxes_url
    click_on 'New seedbox'

    fill_in 'Name', with: @seedbox.name
    click_on 'Create Seedbox'

    assert_text 'Seedbox was successfully created'
    click_on 'Back'
  end

  test 'should update Seedbox' do
    visit seedbox_url(@seedbox)
    click_on 'Edit this seedbox', match: :first

    fill_in 'Name', with: @seedbox.name
    click_on 'Update Seedbox'

    assert_text 'Seedbox was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Seedbox' do
    visit seedbox_url(@seedbox)
    click_on 'Destroy this seedbox', match: :first

    assert_text 'Seedbox was successfully destroyed'
  end
end
