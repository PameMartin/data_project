class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP}
  validates :first_name, :last_name, :email, presence: true
end
