class DestinationsController < ApplicationController
  def index
    @destinations = Destination
                              .joins(:trips)
                              .group("destinations.id")
                              .order("COUNT(trips.id) DESC")
  end

  def show
    @destination = Destination.find(params[:id])
  end
end
