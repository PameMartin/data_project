class ReviewsController < ApplicationController
  def index
    @reviews = Review.order(rating: :desc)
  end

  def show
    @review = Review.find(params[:id])
  end
end
