# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[
  { name: "Leison", email: "leison@gmail.com" },
  { name: "Maria", email: "maria@example.com" },
  { name: "John", email: "john@example.com" },
  { name: "Alice", email: "alice@example.com" },
  { name: "Bob", email: "bob@example.com" },
  { name: "Carlos", email: "carlos@example.com" },
  { name: "Daniela", email: "daniela@example.com" },
  { name: "Eva", email: "eva@example.com" },
  { name: "Frank", email: "frank@example.com" },
  { name: "Grace", email: "grace@example.com" },
  { name: "Hector", email: "hector@example.com" },
  { name: "Irene", email: "irene@example.com" },
  { name: "James", email: "james@example.com" },
  { name: "Karen", email: "karen@example.com" },
  { name: "Luis", email: "luis@example.com" }
].each do |user|
  User.find_or_create_by!(user)
  puts "User #{user[:name]} created successfully"
end
