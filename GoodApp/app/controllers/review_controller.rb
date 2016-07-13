class ReviewController < ApplicationController
  def new

  end
  def create
<<<<<<< HEAD
<<<<<<< HEAD
    @review = Review.new(params.require(:create_review).permit(:userid, :bookid, :review))
=======
    @review = Review.new(review_params)
>>>>>>> d4f32959bb7a664b88cc4e047621460747fdbb5e
    @review.save
    redirect_to :back
    # render_output :params
  end

  def show
    @review=Review.all
<<<<<<< HEAD
=======
    # @review = Review.new(params.require(:create_review).permit(:userid, :bookid, :review))
    # @review.save
    # redirect_to :back
    render params
>>>>>>> 9cf4b65eb09ad7dc056e0afab1db7fd2362886ea
=======
  end

  def review_params
  	params.require(:review).permit(:review_msg).merge(params.permit(:user_id,:book_id))
>>>>>>> d4f32959bb7a664b88cc4e047621460747fdbb5e
  end
end
