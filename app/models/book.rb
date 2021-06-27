class Book < ApplicationRecord
    validates :name, :author, :synopsis, presence: true

    before_save :capitalize_book_name, :capitalize_book_author, :capitalize_book_synopsis

    def capitalize_book_name
        self.name.capitalize!
    end

    def capitalize_book_author
        self.author.capitalize!
    end

    def capitalize_book_synopsis
        self.synopsis.capitalize!
    end
end