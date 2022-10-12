class Post < ApplicationRecord
    validates :guidpi, presence: true
    validates :title, presence: true
    validates :description, presence: true, length: {minimum: 10}
    validates :image, presence: true
    validates :link, presence: true, length: {minimum: 10}
end
