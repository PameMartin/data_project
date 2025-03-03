class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @trip = Trip.find(params[:trip_id])
    @review = @trip.review.find(params[:id])
  end
end
