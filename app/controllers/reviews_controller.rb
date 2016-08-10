class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create]
  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.build(params_review)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private
  def params_review
    params.require(:review).permit(:content, :rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
