class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :isbd
      t.string :title
      t.integer :number_of_page
      t.string :quantity
      t.date :publishing_year
      t.integer :classification_id
      t.integer :publisher_id
      t.integer :language_id
      t.integer :author_id
      t.integer :location_id
      t.datetime :date_added
      t.integer :student_id
      t.boolean :book_status

      t.timestamps
    end
  end
end
