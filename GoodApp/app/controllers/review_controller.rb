class ReviewController < ApplicationController
  def create
    # @review = Review.new(params.require(:create_review).permit(:userid, :bookid, :review))
    # @review.save
    # redirect_to :back
    render params
  end
end
