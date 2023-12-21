require "test_helper"

class CouponBorrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coupon_borrow = coupon_borrows(:one)
  end

  test "should get index" do
    get coupon_borrows_url
    assert_response :success
  end

  test "should get new" do
    get new_coupon_borrow_url
    assert_response :success
  end

  test "should create coupon_borrow" do
    assert_difference("CouponBorrow.count") do
      post coupon_borrows_url, params: { coupon_borrow: { borrow_time: @coupon_borrow.borrow_time, coupon_borrow_id: @coupon_borrow.coupon_borrow_id, isbd: @coupon_borrow.isbd, librarian_id: @coupon_borrow.librarian_id, quantity: @coupon_borrow.quantity, return_date: @coupon_borrow.return_date, student_id: @coupon_borrow.student_id } }
    end

    assert_redirected_to coupon_borrow_url(CouponBorrow.last)
  end

  test "should show coupon_borrow" do
    get coupon_borrow_url(@coupon_borrow)
    assert_response :success
  end

  test "should get edit" do
    get edit_coupon_borrow_url(@coupon_borrow)
    assert_response :success
  end

  test "should update coupon_borrow" do
    patch coupon_borrow_url(@coupon_borrow), params: { coupon_borrow: { borrow_time: @coupon_borrow.borrow_time, coupon_borrow_id: @coupon_borrow.coupon_borrow_id, isbd: @coupon_borrow.isbd, librarian_id: @coupon_borrow.librarian_id, quantity: @coupon_borrow.quantity, return_date: @coupon_borrow.return_date, student_id: @coupon_borrow.student_id } }
    assert_redirected_to coupon_borrow_url(@coupon_borrow)
  end

  test "should destroy coupon_borrow" do
    assert_difference("CouponBorrow.count", -1) do
      delete coupon_borrow_url(@coupon_borrow)
    end

    assert_redirected_to coupon_borrows_url
  end
end
