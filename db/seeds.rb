# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
laksa_king =  { name: "Laksa King", address: "17 Louise Ln, Flemington 3031", category: "chinese" }
epicure =  { name: "Epicure", address: "5008 Paris", category: "french" }
hardimans = { name: "Hardimans", address: "3112 Melbourne", category: "italian" }

# puts "Creating reviews..."
# yummy = { content: "yummy yummy", rating: 4 }
# yummyy = { content: "yummyy yummyy", rating: 5 }
# tasty = { content: "tasty tasty", rating: 3 }
# tastyy = { content: "tastyy tastyy", rating: 4 }
# delicious = { content: "delicous delicious", rating: 2 }
# deliciousy = { content: "delicousy delicousy", rating: 1 }

[dishoom, pizza_east, laksa_king, epicure, hardimans].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# [yummy, yummyy, tasty, tastyy, delicious, deliciousy].each do |attributes|
#   review = Review.create!(attributes)

# # yummy.restaurant = dishoom
# # yummyy.restaurant = pizza_east
# # tasty.restaurant = laksa_king
# # tastyy.restaurant = epicure
# # delicious.restaurant = hardimans
# # deliciousy.restaurant = hardimans

#   puts "Created #{review.content}"
# end
# puts "Finished!"
