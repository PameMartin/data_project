class Destination < ApplicationRecord
  has_one_attached :image
  has_many :trips

  validates :name, :location, :description, presence: true

  def self.ordered_by_trip_count
      self.select("destinations.*, COUNT(trips.id) AS trip_count")
          .left_joins(:trips)
          .group("destinations.id")
          .order("trip_count DESC")
  end
end
