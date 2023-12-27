class BookBorrow < ApplicationRecord
    validates_presence_of :coupon_borrow_id, :title, :author_id, :publisher_id
    validates_uniqueness_of :coupon_borrow_id, :title
    belongs_to :author
    belongs_to :publishing_company
    has_many :books
end
