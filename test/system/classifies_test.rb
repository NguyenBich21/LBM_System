require "application_system_test_case"

class ClassifiesTest < ApplicationSystemTestCase
  setup do
    @classify = classifies(:one)
  end

  test "visiting the index" do
    visit classifies_url
    assert_selector "h1", text: "Classifies"
  end

  test "should create classify" do
    visit classifies_url
    click_on "New classify"

    fill_in "Classification", with: @classify.classification_id
    fill_in "Type", with: @classify.type
    click_on "Create Classify"

    assert_text "Classify was successfully created"
    click_on "Back"
  end

  test "should update Classify" do
    visit classify_url(@classify)
    click_on "Edit this classify", match: :first

    fill_in "Classification", with: @classify.classification_id
    fill_in "Type", with: @classify.type
    click_on "Update Classify"

    assert_text "Classify was successfully updated"
    click_on "Back"
  end

  test "should destroy Classify" do
    visit classify_url(@classify)
    click_on "Destroy this classify", match: :first

    assert_text "Classify was successfully destroyed"
  end
end
