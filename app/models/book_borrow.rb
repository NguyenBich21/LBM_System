class BookBorrow < ApplicationRecord
    validates_presence_of :coupon_borrow_id, :title, :author_id, :publisher_id
    validates_uniqueness_of :coupon_borrow_id, :title
    has_many :books
end
