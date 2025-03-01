class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination

  validates :travel_date, presence: true
end
