class ReviewController < ApplicationController
  def new

  end
  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to :back
    # render_output :params
  end

  def show
    @review=Review.all
  end

  def review_params
  	params.require(:review).permit(:review_msg).merge(params.permit(:user_id,:book_id))
  end
end
