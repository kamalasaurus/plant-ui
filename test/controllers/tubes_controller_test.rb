require "test_helper"

class TubesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tube = tubes(:one)
  end

  test "should get index" do
    get tubes_url
    assert_response :success
  end

  test "should get new" do
    get new_tube_url
    assert_response :success
  end

  test "should create tube" do
    assert_difference("Tube.count") do
      post tubes_url, params: { tube: { count: @tube.count, position: @tube.position, seed_id: @tube.seed_id, seedbox_id: @tube.seedbox_id, volume: @tube.volume } }
    end

    assert_redirected_to tube_url(Tube.last)
  end

  test "should show tube" do
    get tube_url(@tube)
    assert_response :success
  end

  test "should get edit" do
    get edit_tube_url(@tube)
    assert_response :success
  end

  test "should update tube" do
    patch tube_url(@tube), params: { tube: { count: @tube.count, position: @tube.position, seed_id: @tube.seed_id, seedbox_id: @tube.seedbox_id, volume: @tube.volume } }
    assert_redirected_to tube_url(@tube)
  end

  test "should destroy tube" do
    assert_difference("Tube.count", -1) do
      delete tube_url(@tube)
    end

    assert_redirected_to tubes_url
  end
end
