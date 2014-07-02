class BooksController < ApplicationController

  def index
    @books = Book.all
  end
  def new
    @books = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to '/books'
    else
      render :new
    end

  end

  private
  def book_params
   params.require(:book).permit(:name, :author)
  end
end