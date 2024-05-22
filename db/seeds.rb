require 'faker'

# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all


puts "Creating restaurants..."
sichuan = {name: "The Sichuan Restaurant", address: "14 City Rd, London EC1Y 2AA", category: "chinese"}
padella = {name: "Padella", address: "1 Phipp St, London EC2A 4PS", category: "italian"}
shiro = {name: "Shiro Sushi", address: "14 City Rd, London EC1Y 2AA", category: "japanese"}
cocotte = {name: "Cocotte", address: "8 Hoxton Square, London N1 6NU", category: "french"}
dovetail = {name: "The Dovetail ", address: "9-10 Jerusalem Passage, London EC1V 4JP", category: "belgian"}



[sichuan, padella, shiro, cocotte,dovetail].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
