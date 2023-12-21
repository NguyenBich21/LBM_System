require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Author", with: @book.author_id
    check "Book status" if @book.book_status
    fill_in "Classification", with: @book.classification_id
    fill_in "Date added", with: @book.date_added
    fill_in "Isbd", with: @book.isbd
    fill_in "Language", with: @book.language_id
    fill_in "Location", with: @book.location_id
    fill_in "Number of page", with: @book.number_of_page
    fill_in "Publisher", with: @book.publisher_id
    fill_in "Publishing year", with: @book.publishing_year
    fill_in "Quantity", with: @book.quantity
    fill_in "Student", with: @book.student_id
    fill_in "Title", with: @book.title
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Author", with: @book.author_id
    check "Book status" if @book.book_status
    fill_in "Classification", with: @book.classification_id
    fill_in "Date added", with: @book.date_added
    fill_in "Isbd", with: @book.isbd
    fill_in "Language", with: @book.language_id
    fill_in "Location", with: @book.location_id
    fill_in "Number of page", with: @book.number_of_page
    fill_in "Publisher", with: @book.publisher_id
    fill_in "Publishing year", with: @book.publishing_year
    fill_in "Quantity", with: @book.quantity
    fill_in "Student", with: @book.student_id
    fill_in "Title", with: @book.title
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
