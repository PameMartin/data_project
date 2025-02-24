require 'csv'
User.destroy_all

filename = Rails.root.join("user_data.csv")
csv_data = File.read(filename)
users = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

users.each do |user|
  user.create(
    first_name: user['First Name'],
    last_name: user['Last Nmae'],
    gender: user['gender'],
    email: user['email'],
    phone: user['phone'],
    date_of_birth: user['date_of_birth'],
    job_title: user['jobtitle']
  )
end

puts "Create #{User.count} users."
