require 'csv'
User.destroy_all

filename = Rails.root.join("db/user_data.csv")
csv_data = File.read(filename)
users = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

users.each do |user|
  User.create(
    first_name: user['First Name'],
    last_name: user['Last Name'],
    gender: user['Genre'],
    email: user['Email'],
    phone: user['Phone'],
    date_of_birth: user['Date of birth'],
    job_title: user['Job Title']
  )
end

puts "Create #{User.count} users."
