class BooksController < ApplicationController
  def show
    @books=Book.all
  end
  def review
  end

  def rate
  end
end
