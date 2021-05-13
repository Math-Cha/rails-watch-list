class Movie < ApplicationRecord
    has_many :bookmarks

    validates :title, presence: true
    validates :overview, presence: true
    validates :title, uniqueness: true
    validates :title, length: { minimum: 1 }
    validates :overview, length: { minimum: 1 }
end

