class Book < ApplicationRecord
    validates_presence_of :isbd, :title, :quantity, :classification_id, :publisher_id, :language_id, :author_id, :location_id
    validates_uniqueness_of :isbd, :title
end
