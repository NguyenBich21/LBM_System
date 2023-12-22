class Author < ApplicationRecord
    validates_presence_of :author_id, :author_name
    validates_uniqueness_of :author_id
    has_many :books
end
