class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def show
  end

  # private
  # def book_params
  # params.require(:book).permit(:title, :body, :user_id)
  # end
end
