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

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

def update
  @book = Book.find(params[:id])
  @book.update_attributes(book_params)
  redirect_to '/books'
end

  def destroy
    @book = Book.delete(params[:id])
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:name, :author)
  end
end