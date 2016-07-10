class BooksController < ApplicationController
  def index
    @books=Book.all
  end
  def show
    @books = Book.find(params[:format])
    @bookgenres=Genre.where(id: BookGenre.select(:genre_id).where("book_id" => @books.id))
    @reviews = Review.where(book_id: @books.id)
    @ratings = Rate.where(book_id: @books.id)
  end
  def review
    @review = Review.new(params.require(:review).permit(:review_msg))
    @review.save
  end

  def rate
  end
end