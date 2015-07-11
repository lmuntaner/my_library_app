class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    id = params[:id]
    @book = Book.find(id)
    @comments = @book.comments
    @comment = Comment.new
  end
end
