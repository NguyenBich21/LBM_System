class PublishingCompany < ApplicationRecord
    validates_presence_of :publisher_id, :name
    validates_uniqueness_of :publisher_id
end
