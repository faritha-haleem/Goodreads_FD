class BooksController < ApplicationController

  def index

    @books=Book.joins('LEFT OUTER JOIN book_authors ON book_authors.book_id = books.id
                       LEFT OUTER JOIN publishers ON books.publisher_id = publishers.id
                       LEFT OUTER JOIN authors ON authors.id = book_authors.author_id')
               .select("books.*, authors.name as author_name, publishers.pub_name as pub_name")
  end
  def show
    @books1=Book.joins('LEFT OUTER JOIN book_authors ON book_authors.book_id = books.id
                       LEFT OUTER JOIN publishers ON books.publisher_id = publishers.id
                       LEFT OUTER JOIN authors ON authors.id = book_authors.author_id')
               .select("books.*, authors.name as author_name, publishers.pub_name as pub_name")
    @books = @books1.find(params[:format])
    @bookgenres = Genre.where(id: BookGenre.select(:genre_id).where("book_id" => @books.id))
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