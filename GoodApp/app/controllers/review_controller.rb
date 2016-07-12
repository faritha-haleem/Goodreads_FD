class ReviewController < ApplicationController
  def new

  end
  def create
    @review = Review.new(params.require(:create_review).permit(:userid, :bookid, :review))
    @review.save
    redirect_back fallback_location: "http://localhost:3000/show"
  end

  def show
    @review=Review.all
  end
end
