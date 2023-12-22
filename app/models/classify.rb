class Classify < ApplicationRecord
    validates_presence_of :classification_id, :type
    validates_uniqueness_of :classification_id, :type
    has_many :books
end
