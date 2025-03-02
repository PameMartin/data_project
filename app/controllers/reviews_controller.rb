class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = @trip.review.find(params[:id])
  end
end
