require "application_system_test_case"

class LibrariansTest < ApplicationSystemTestCase
  setup do
    @librarian = librarians(:one)
  end

  test "visiting the index" do
    visit librarians_url
    assert_selector "h1", text: "Librarians"
  end

  test "should create librarian" do
    visit librarians_url
    click_on "New librarian"

    fill_in "Librarian", with: @librarian.librarian_id
    fill_in "Name", with: @librarian.name
    fill_in "Phone number", with: @librarian.phone_number
    click_on "Create Librarian"

    assert_text "Librarian was successfully created"
    click_on "Back"
  end

  test "should update Librarian" do
    visit librarian_url(@librarian)
    click_on "Edit this librarian", match: :first

    fill_in "Librarian", with: @librarian.librarian_id
    fill_in "Name", with: @librarian.name
    fill_in "Phone number", with: @librarian.phone_number
    click_on "Update Librarian"

    assert_text "Librarian was successfully updated"
    click_on "Back"
  end

  test "should destroy Librarian" do
    visit librarian_url(@librarian)
    click_on "Destroy this librarian", match: :first

    assert_text "Librarian was successfully destroyed"
  end
end
