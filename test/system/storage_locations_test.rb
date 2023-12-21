require "application_system_test_case"

class StorageLocationsTest < ApplicationSystemTestCase
  setup do
    @storage_location = storage_locations(:one)
  end

  test "visiting the index" do
    visit storage_locations_url
    assert_selector "h1", text: "Storage locations"
  end

  test "should create storage location" do
    visit storage_locations_url
    click_on "New storage location"

    fill_in "Drawer", with: @storage_location.drawer
    fill_in "Location", with: @storage_location.location_id
    fill_in "Shefl", with: @storage_location.shefl
    click_on "Create Storage location"

    assert_text "Storage location was successfully created"
    click_on "Back"
  end

  test "should update Storage location" do
    visit storage_location_url(@storage_location)
    click_on "Edit this storage location", match: :first

    fill_in "Drawer", with: @storage_location.drawer
    fill_in "Location", with: @storage_location.location_id
    fill_in "Shefl", with: @storage_location.shefl
    click_on "Update Storage location"

    assert_text "Storage location was successfully updated"
    click_on "Back"
  end

  test "should destroy Storage location" do
    visit storage_location_url(@storage_location)
    click_on "Destroy this storage location", match: :first

    assert_text "Storage location was successfully destroyed"
  end
end
