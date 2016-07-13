class ReviewController < ApplicationController
  def new

  end
  def create
<<<<<<< HEAD
    @review = Review.new(params.require(:create_review).permit(:userid, :bookid, :review))
    @review.save
    redirect_back fallback_location: "http://localhost:3000/show"
  end

  def show
    @review=Review.all
=======
    # @review = Review.new(params.require(:create_review).permit(:userid, :bookid, :review))
    # @review.save
    # redirect_to :back
    render params
>>>>>>> 9cf4b65eb09ad7dc056e0afab1db7fd2362886ea
  end
end
