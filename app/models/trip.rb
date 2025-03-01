class Trip < ApplicationRecord
  belongs_to :users
  belongs_to :destinations

  validates :travel_date, presence: true
end
