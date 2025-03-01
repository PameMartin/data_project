class CreateTrips < ActiveRecord::Migration[8.0]
  def change
    create_table :trips do |t|
      t.date :travel_date

      t.timestamps
    end
  end
end
