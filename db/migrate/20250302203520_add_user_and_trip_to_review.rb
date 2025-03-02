class AddUserAndTripToReview < ActiveRecord::Migration[8.0]
  def change
    add_reference :reviews, :user, null: false, foreign_key: true
    add_reference :reviews, :trip, null: false, foreign_key: true
  end
end
