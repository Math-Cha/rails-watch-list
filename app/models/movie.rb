class Movie < ApplicationRecord
    has_many :bookmarks, dependent: :destroy

    validates :title, presence: true
    validates :overview, presence: true
    validates :title, uniqueness: true
    validates :title, length: { minimum: 1 }
    validates :overview, length: { minimum: 1 }
end

