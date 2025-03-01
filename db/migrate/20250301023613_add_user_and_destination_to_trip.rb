class AddUserAndDestinationToTrip < ActiveRecord::Migration[8.0]
  def change
    add_reference :trips, :user, null: false, foreign_key: true
    add_reference :trips, :destination, null: false, foreign_key: true
  end
end
