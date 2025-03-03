class HomeController < ApplicationController
  def index
    @trips = Destination
                      .joins(:trips)
                      .group("destinations.id")
                      .order("COUNT(trips.id) DESC")
                      .limit(10)
    @reviews = Review.order(rating: :desc)
                      .limit(10)
  end
end
