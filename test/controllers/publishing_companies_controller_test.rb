require "test_helper"

class PublishingCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publishing_company = publishing_companies(:one)
  end

  test "should get index" do
    get publishing_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_publishing_company_url
    assert_response :success
  end

  test "should create publishing_company" do
    assert_difference("PublishingCompany.count") do
      post publishing_companies_url, params: { publishing_company: { name: @publishing_company.name, publisher_id: @publishing_company.publisher_id } }
    end

    assert_redirected_to publishing_company_url(PublishingCompany.last)
  end

  test "should show publishing_company" do
    get publishing_company_url(@publishing_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_publishing_company_url(@publishing_company)
    assert_response :success
  end

  test "should update publishing_company" do
    patch publishing_company_url(@publishing_company), params: { publishing_company: { name: @publishing_company.name, publisher_id: @publishing_company.publisher_id } }
    assert_redirected_to publishing_company_url(@publishing_company)
  end

  test "should destroy publishing_company" do
    assert_difference("PublishingCompany.count", -1) do
      delete publishing_company_url(@publishing_company)
    end

    assert_redirected_to publishing_companies_url
  end
end
