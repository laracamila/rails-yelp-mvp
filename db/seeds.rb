# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning database..."
# Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = {
  name: "Dishoom",
  address: "7 Boundary St, London E2 7JE",
  phone_number: "55943-957772",
  category: "japanese"
}
pizza_east =  {
  name: "Pizza East",
  address: "56A Shoreditch High St, London E1 6PQ",
  phone_number: "55943-00002",
  category: "chinese"
}
anna = {
  name: "Anna",
  address: "Epitacio pessoa, Ipanema",
  phone_number: "55943-957700",
  category: "italian"
}
outback =  {
  name: "Outback",
  address: "Barra da Tijuca",
  phone_number: "00003-957772",
  category: "french"
}
villa_italia = {
  name: "Villa Italia",
  address: "Df-150, km2.5",
  phone_number: "55000007772",
  category: "italian"
}

[dishoom, pizza_east, anna, outback, villa_italia].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
