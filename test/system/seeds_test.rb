require "application_system_test_case"

class SeedsTest < ApplicationSystemTestCase
  setup do
    @seed = seeds(:one)
  end

  test "visiting the index" do
    visit seeds_url
    assert_selector "h1", text: "Seeds"
  end

  test "should create seed" do
    visit seeds_url
    click_on "New seed"

    fill_in "Generation", with: @seed.generation
    fill_in "Location", with: @seed.location
    fill_in "Quantity", with: @seed.quantity
    fill_in "Seedbox", with: @seed.seedbox
    fill_in "Species", with: @seed.species
    click_on "Create Seed"

    assert_text "Seed was successfully created"
    click_on "Back"
  end

  test "should update Seed" do
    visit seed_url(@seed)
    click_on "Edit this seed", match: :first

    fill_in "Generation", with: @seed.generation
    fill_in "Location", with: @seed.location
    fill_in "Quantity", with: @seed.quantity
    fill_in "Seedbox", with: @seed.seedbox
    fill_in "Species", with: @seed.species
    click_on "Update Seed"

    assert_text "Seed was successfully updated"
    click_on "Back"
  end

  test "should destroy Seed" do
    visit seed_url(@seed)
    click_on "Destroy this seed", match: :first

    assert_text "Seed was successfully destroyed"
  end
end
