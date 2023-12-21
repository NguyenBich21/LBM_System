json.extract! book_borrow, :id, :coupon_borrow_id, :title, :author_id, :publisher_id, :created_at, :updated_at
json.url book_borrow_url(book_borrow, format: :json)
