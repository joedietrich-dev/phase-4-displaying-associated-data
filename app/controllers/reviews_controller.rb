class ReviewsController < ApplicationController

  def index
    reviews = Review.all.includes(:dog_house).order(rating: :desc)
    render json: reviews, include: :dog_house
  end

end
