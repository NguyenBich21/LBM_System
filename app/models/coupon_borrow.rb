class CouponBorrow < ApplicationRecord
    validates_presence_of :coupon_borrow_id, :student_id, :borrow_time, :isbd, :return_date, :librarian_id
    validates_uniqueness_of :coupon_borrow_id
end
