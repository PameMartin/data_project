class User < ApplicationRecord
  has_many :trips
  has_many :reviews, through: :trips, dependent: :destroy

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :first_name, :last_name, :email, presence: true
end
