class Student < ApplicationRecord
    validates_presence_of :student_id, :name, :department_id, :address, :phone_number
    validates_uniqueness_of :student_id, :phone_number
    belongs_to :department
    has_many :coupon_borrows

end
