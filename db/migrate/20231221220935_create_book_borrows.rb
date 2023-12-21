class CreateBookBorrows < ActiveRecord::Migration[7.0]
  def change
    create_table :book_borrows do |t|
      t.integer :coupon_borrow_id
      t.string :title
      t.integer :author_id
      t.integer :publisher_id

      t.timestamps
    end
  end
end
