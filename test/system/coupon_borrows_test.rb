require "application_system_test_case"

class CouponBorrowsTest < ApplicationSystemTestCase
  setup do
    @coupon_borrow = coupon_borrows(:one)
  end

  test "visiting the index" do
    visit coupon_borrows_url
    assert_selector "h1", text: "Coupon borrows"
  end

  test "should create coupon borrow" do
    visit coupon_borrows_url
    click_on "New coupon borrow"

    fill_in "Borrow time", with: @coupon_borrow.borrow_time
    fill_in "Coupon borrow", with: @coupon_borrow.coupon_borrow_id
    fill_in "Isbd", with: @coupon_borrow.isbd
    fill_in "Librarian", with: @coupon_borrow.librarian_id
    fill_in "Quantity", with: @coupon_borrow.quantity
    fill_in "Return date", with: @coupon_borrow.return_date
    fill_in "Student", with: @coupon_borrow.student_id
    click_on "Create Coupon borrow"

    assert_text "Coupon borrow was successfully created"
    click_on "Back"
  end

  test "should update Coupon borrow" do
    visit coupon_borrow_url(@coupon_borrow)
    click_on "Edit this coupon borrow", match: :first

    fill_in "Borrow time", with: @coupon_borrow.borrow_time
    fill_in "Coupon borrow", with: @coupon_borrow.coupon_borrow_id
    fill_in "Isbd", with: @coupon_borrow.isbd
    fill_in "Librarian", with: @coupon_borrow.librarian_id
    fill_in "Quantity", with: @coupon_borrow.quantity
    fill_in "Return date", with: @coupon_borrow.return_date
    fill_in "Student", with: @coupon_borrow.student_id
    click_on "Update Coupon borrow"

    assert_text "Coupon borrow was successfully updated"
    click_on "Back"
  end

  test "should destroy Coupon borrow" do
    visit coupon_borrow_url(@coupon_borrow)
    click_on "Destroy this coupon borrow", match: :first

    assert_text "Coupon borrow was successfully destroyed"
  end
end
