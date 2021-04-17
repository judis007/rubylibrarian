class Book < ApplicationRecord
    validates :name, :author, :synopsis, presence: true
end