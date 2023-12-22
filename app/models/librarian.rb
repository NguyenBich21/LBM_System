class Librarian < ApplicationRecord
    validates_presence_of :librarian_id, :name, :phone_number
    validates_uniqueness_of :librarian_id, :phone_number
end
