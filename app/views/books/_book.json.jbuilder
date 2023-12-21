json.extract! book, :id, :isbd, :title, :number_of_page, :quantity, :publishing_year, :classification_id, :publisher_id, :language_id, :author_id, :location_id, :date_added, :student_id, :book_status, :created_at, :updated_at
json.url book_url(book, format: :json)
