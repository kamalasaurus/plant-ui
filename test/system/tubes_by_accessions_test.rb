# frozen_string_literal: true

require 'application_system_test_case'

class TubesByAccessionsTest < ApplicationSystemTestCase
  setup do
    @tubes_by_accession = tubes_by_accessions(:one)
  end

  test 'visiting the index' do
    visit tubes_by_accessions_url
    assert_selector 'h1', text: 'Tubes by accessions'
  end

  test 'should create tubes by accession' do
    visit tubes_by_accessions_url
    click_on 'New tubes by accession'

    click_on 'Create Tubes by accession'

    assert_text 'Tubes by accession was successfully created'
    click_on 'Back'
  end

  test 'should update Tubes by accession' do
    visit tubes_by_accession_url(@tubes_by_accession)
    click_on 'Edit this tubes by accession', match: :first

    click_on 'Update Tubes by accession'

    assert_text 'Tubes by accession was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Tubes by accession' do
    visit tubes_by_accession_url(@tubes_by_accession)
    click_on 'Destroy this tubes by accession', match: :first

    assert_text 'Tubes by accession was successfully destroyed'
  end
end
