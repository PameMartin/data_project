class Destination < ApplicationRecord
  has_one_attached :image
  has_many :trips

  validates :name, :location, :description, presence: true
end
