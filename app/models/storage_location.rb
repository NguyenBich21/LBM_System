class StorageLocation < ApplicationRecord
    validates_presence_of :location_id
    validates_uniqueness_of :location_id
    has_many :books
end
