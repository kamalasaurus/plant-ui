# frozen_string_literal: true

require 'test_helper'

class TubesByAccessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tubes_by_accession = tubes_by_accessions(:one)
  end

  test 'should get index' do
    get tubes_by_accessions_url
    assert_response :success
  end

  test 'should get new' do
    get new_tubes_by_accession_url
    assert_response :success
  end

  test 'should create tubes_by_accession' do
    assert_difference('TubesByAccession.count') do
      post tubes_by_accessions_url, params: { tubes_by_accession: {} }
    end

    assert_redirected_to tubes_by_accession_url(TubesByAccession.last)
  end

  test 'should show tubes_by_accession' do
    get tubes_by_accession_url(@tubes_by_accession)
    assert_response :success
  end

  test 'should get edit' do
    get edit_tubes_by_accession_url(@tubes_by_accession)
    assert_response :success
  end

  test 'should update tubes_by_accession' do
    patch tubes_by_accession_url(@tubes_by_accession), params: { tubes_by_accession: {} }
    assert_redirected_to tubes_by_accession_url(@tubes_by_accession)
  end

  test 'should destroy tubes_by_accession' do
    assert_difference('TubesByAccession.count', -1) do
      delete tubes_by_accession_url(@tubes_by_accession)
    end

    assert_redirected_to tubes_by_accessions_url
  end
end
