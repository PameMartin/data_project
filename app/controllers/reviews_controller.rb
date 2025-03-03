class ReviewsController < ApplicationController
  def index
    @reviews = Review.includes(:user, trip: :destination)
                     .order(rating: :desc)
  end

  def show
    @review = Review.includes(:user, trip: :destination)
                    .find(params[:id])
  end
end
