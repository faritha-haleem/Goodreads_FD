class AuthorsController < ApplicationController
  def about
    @title="About"
  end
  def books
    @title="Books"
  end
  def show
    @authors=Author.all
  end
end
