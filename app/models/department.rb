class Department < ApplicationRecord
    validates_presence_of :department_id, :department_name
    validates_uniqueness_of :department_id
    has_many :students
end
