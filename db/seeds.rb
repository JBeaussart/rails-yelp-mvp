puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0422349028", category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "082349028", category: "italian" }
sushi_master = { name: "Sushi Master", address: "33A Sitch Paris E1 6PQ", phone_number: "002832328", category: "japanese" }
brasserie_george =  { name: "Brasserie George", address: "13 rue de la baguette", phone_number: "0928732328", category: "french" }
la_frite = { name: "La frite", address: "45 avenue de la patate", phone_number: "0274624922", category: "belgium" }

[dishoom, pizza_east, sushi_master, brasserie_george, la_frite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
