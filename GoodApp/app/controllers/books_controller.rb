class BooksController < ApplicationController
  def initialize
    @books2=Book.joins('LEFT OUTER JOIN book_authors ON book_authors.book_id = books.id
                       LEFT OUTER JOIN publishers ON books.publisher_id = publishers.id
                       LEFT OUTER JOIN authors ON authors.id = book_authors.author_id
                       LEFT OUTER JOIN book_genres ON book_genres.book_id = books.id
                       LEFT OUTER JOIN genres on genres.id = book_genres.genre_id')
                .select("books.*, authors.name as author_name, publishers.pub_name as pub_name, genres.id as genre_id")

    @books=Book.joins('LEFT OUTER JOIN book_authors ON book_authors.book_id = books.id
                       LEFT OUTER JOIN publishers ON books.publisher_id = publishers.id
                       LEFT OUTER JOIN authors ON authors.id = book_authors.author_id').select("books.*, authors.name as author_name, publishers.pub_name as pub_name")
    #current_user=User.find_by_id(session[:current_user_id])
  end
  def index
  end
  def booklist
    @param1 = params[:param1]
    @books3 = @books2.where("genre_id = ?",@param1)
  end
  def show
    @books1 = @books.find(params[:format])
    @bookgenres = Genre.where(id: BookGenre.select(:genre_id).where("book_id" => @books1.id))
    @reviews = Review.where(book_id: @books1.id)
    @ratings = Rate.where(book_id: @books1.id)
    @allreviews=Review.all
  end

  def fiction
    @param1 = params[:param1]
    @books3 = @books2.where("genre_id = ?",@param1)
  end
end