class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.product_id = params[:product_id]
    @review.save!
    redirect_to "/products/#{params[:product_id]}"
  end

  private
  def review_params
    params.require(:review).permit(
      :rating,
      :description
    )
  end
end
