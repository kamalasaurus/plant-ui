require 'test_helper'

class SeedboxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seedbox = seedboxes(:one)
  end

  test 'should get index' do
    get seedboxes_url
    assert_response :success
  end

  test 'should get new' do
    get new_seedbox_url
    assert_response :success
  end

  test 'should create seedbox' do
    assert_difference('Seedbox.count') do
      post seedboxes_url, params: { seedbox: { name: @seedbox.name } }
    end

    assert_redirected_to seedbox_url(Seedbox.last)
  end

  test 'should show seedbox' do
    get seedbox_url(@seedbox)
    assert_response :success
  end

  test 'should get edit' do
    get edit_seedbox_url(@seedbox)
    assert_response :success
  end

  test 'should update seedbox' do
    patch seedbox_url(@seedbox), params: { seedbox: { name: @seedbox.name } }
    assert_redirected_to seedbox_url(@seedbox)
  end

  test 'should destroy seedbox' do
    assert_difference('Seedbox.count', -1) do
      delete seedbox_url(@seedbox)
    end

    assert_redirected_to seedboxes_url
  end
end
