class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination

  has_many :reviews, dependent: :destroy

  validates :travel_date, presence: true
end
