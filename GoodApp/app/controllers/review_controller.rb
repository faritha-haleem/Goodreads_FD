class ReviewController < ApplicationController
  def create
    @review = Review.new(params.require(:create_review).permit(:userid, :bookid, :review))
    @review.save
  end

  def show
    @review=Review.all
  end
end
