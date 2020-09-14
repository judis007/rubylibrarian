class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all 
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:name, :author, :synopsis))
    @book.student = Student.first
    @book.save
    redirect_to books_path(@book)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(params.require(:book).permit(:name, :author, :synopsis))
    redirect_to books_path(@book)
  end 

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def assign
    @bookstudent = Book.student_id(params[:id])
  end
end
