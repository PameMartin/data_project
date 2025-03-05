class HomeController < ApplicationController
  def index
    @trips = Destination.ordered_by_trip_count
                        .limit(10)

    @reviews = Review.includes(:user, trip: :destination)
                      .order(rating: :desc)
                      .limit(10)
  end
end
