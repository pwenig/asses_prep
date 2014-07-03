class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @book = Book.find(params[:book_id])
  end

  def create

    @comment = Comment.new(comment: params[:comment][:comment],
                          user_id: current_user.id,
                          book_id: params[:book_id]
    )
    if @comment.save
      redirect_to books_path
    else
      render :new
    end

  end
end