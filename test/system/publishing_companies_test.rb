require "application_system_test_case"

class PublishingCompaniesTest < ApplicationSystemTestCase
  setup do
    @publishing_company = publishing_companies(:one)
  end

  test "visiting the index" do
    visit publishing_companies_url
    assert_selector "h1", text: "Publishing companies"
  end

  test "should create publishing company" do
    visit publishing_companies_url
    click_on "New publishing company"

    fill_in "Name", with: @publishing_company.name
    fill_in "Publisher", with: @publishing_company.publisher_id
    click_on "Create Publishing company"

    assert_text "Publishing company was successfully created"
    click_on "Back"
  end

  test "should update Publishing company" do
    visit publishing_company_url(@publishing_company)
    click_on "Edit this publishing company", match: :first

    fill_in "Name", with: @publishing_company.name
    fill_in "Publisher", with: @publishing_company.publisher_id
    click_on "Update Publishing company"

    assert_text "Publishing company was successfully updated"
    click_on "Back"
  end

  test "should destroy Publishing company" do
    visit publishing_company_url(@publishing_company)
    click_on "Destroy this publishing company", match: :first

    assert_text "Publishing company was successfully destroyed"
  end
end
