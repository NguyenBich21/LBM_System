class Book < ApplicationRecord
    validates_presence_of :isbd, :title, :quantity, :publisher_id, :language_id, :author_id, :location_id, :date_added
    validates_uniqueness_of :isbd, :title
    belongs_to :publishing_company
    belongs_to :language
    belongs_to :author
    belongs_to :storage_location

end
