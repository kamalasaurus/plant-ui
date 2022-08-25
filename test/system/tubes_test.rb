require "application_system_test_case"

class TubesTest < ApplicationSystemTestCase
  setup do
    @tube = tubes(:one)
  end

  test "visiting the index" do
    visit tubes_url
    assert_selector "h1", text: "Tubes"
  end

  test "should create tube" do
    visit tubes_url
    click_on "New tube"

    fill_in "Count", with: @tube.count
    fill_in "Position", with: @tube.position
    fill_in "Seed", with: @tube.seed_id
    fill_in "Seedbox", with: @tube.seedbox_id
    fill_in "Volume", with: @tube.volume
    click_on "Create Tube"

    assert_text "Tube was successfully created"
    click_on "Back"
  end

  test "should update Tube" do
    visit tube_url(@tube)
    click_on "Edit this tube", match: :first

    fill_in "Count", with: @tube.count
    fill_in "Position", with: @tube.position
    fill_in "Seed", with: @tube.seed_id
    fill_in "Seedbox", with: @tube.seedbox_id
    fill_in "Volume", with: @tube.volume
    click_on "Update Tube"

    assert_text "Tube was successfully updated"
    click_on "Back"
  end

  test "should destroy Tube" do
    visit tube_url(@tube)
    click_on "Destroy this tube", match: :first

    assert_text "Tube was successfully destroyed"
  end
end
