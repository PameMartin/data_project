require 'csv'
require 'faker'
require "open-uri"

User.destroy_all
Destination.destroy_all

filename = Rails.root.join("db/user_data.csv")
csv_data = File.read(filename)
users = CSV.parse(csv_data, headers: true, encoding: 'utf-8', col_sep: "\t")

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

# image_client = Pexels::Client.new
# response = image_client.photos.search('destination', page: 1, per_page: 50)

50.times do
  city = Faker::Address.unique.city
  country = Faker::Address.unique.country

  Destination.create(
    name: city,
    location: country,
    description: "Welcome to #{city}, a beautiful city located in #{country}, where the culture meets adventure. Explore stunning landmarks, diverse cuisines, and vibrant street life."
  )
end
# Destination.all.each_with_index do |destination, index|
#   downloaded_image = URI.parse(response.photos[index].scr["small"]).open
#   destination.image.attach(
#     io: downloaded_image,
#     filename: "#{destination.name}.jpg"
#   )
# end
puts "Created #{User.count} users."
puts "Created #{Destination.count} destinations."
