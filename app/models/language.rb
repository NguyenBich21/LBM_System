class Language < ApplicationRecord
    validates_presence_of :language_id, :laguage
    validates_uniqueness_of :language_id, :laguage
    has_many :books
end
