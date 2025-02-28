class Destination < ApplicationRecord
  has_one_attached :image

  validates :name, :location, :description, presence: true
end
