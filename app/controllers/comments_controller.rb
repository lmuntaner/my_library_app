class CommentsController < ApplicationController

  def create
    book = Book.find(params[:book_id])
    comment = book.comments.new(comment_params)
    if comment.save
      redirect_to book_path(book)
    else
      redirect_to book_path(book)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text_comment, :book_id)
  end
end
