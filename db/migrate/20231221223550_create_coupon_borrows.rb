class CreateCouponBorrows < ActiveRecord::Migration[7.0]
  def change
    create_table :coupon_borrows do |t|
      t.integer :coupon_borrow_id
      t.integer :student_id
      t.datetime :borrow_time
      t.string :isbd
      t.string :quantity
      t.date :return_date
      t.integer :librarian_id

      t.timestamps
    end
  end
end
