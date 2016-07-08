class PublisherController < ApplicationController
  def show
    @publishers=Publisher.all
  end

  def home
  end
end
