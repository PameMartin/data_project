class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :phone
      t.date :date_of_birth
      t.string :job_title

      t.timestamps
    end
  end
end
