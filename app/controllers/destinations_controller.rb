class DestinationsController < ApplicationController
  def index
    @destinations = Destination.ordered_by_trip_count
  end

  def show
    @destination = Destination.find(params[:id])
  end
end
