class Student < ApplicationRecord
    validates_presence_of :student_id, :name, :address, :phone_number
    validates_uniqueness_of :student_id, :phone_number
    has_many :coupon_borrow_id
end
