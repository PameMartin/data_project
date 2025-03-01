class Trip < ApplicationRecord
  belongs_to :users
  belongs_tu :destinations

  validates :travel_date, presence: true
end
