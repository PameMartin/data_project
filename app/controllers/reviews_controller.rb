class ReviewsController < ApplicationController
  def index
    @reviews = if params[:query].present?
                  Review.joins(trip: :destination)
                        .select("reviews.*, destinations.name AS city_name")
                        .where("LOWER(destinations.name) LIKE LOWER(?)", "%#{params[:query]}%")
                        .order(rating: :desc)
    else
                  Review.includes(:user, trip: :destination)
                         .order(rating: :desc)
    end
  end

  def show
    @review = Review.includes(:user, trip: :destination)
                    .find(params[:id])
  end
end
