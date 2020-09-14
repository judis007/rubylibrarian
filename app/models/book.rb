class Book < ApplicationRecord
    belongs_to :student
    validates :name, :author, :synopsis, presence: true
end