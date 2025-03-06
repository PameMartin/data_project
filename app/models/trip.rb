class Trip < ApplicationRecord
  # belongs_to :user
  belongs_to :destination

  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :travel_date, presence: true
end
