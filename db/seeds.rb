# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u = User.create!(email: 'thomas@gmail.com', password:'000000')
Gadget.destroy_all
Gadget.create!(user: u,category: "camera", brand: "gopro", model: "hero 5", price: 20, description:"very good camera, brand new!", location: "Brussels")
Gadget.create!(user: u, category: "projector", brand: "sony", model: "XYZ", price: 50, description:"basic version of 2009", location: "London")
Gadget.create!(user: u, category: "drone", brand: "DJI", model: "Phantom", price: 100, description:"latest model!", location: "Paris")
Gadget.create!(user: u,category: "camera", brand: "Nikon", model: "D5", price: 20, description:"impressive features!", location: "Brussels")
Gadget.create!(user: u,category: "camera", brand: "Hasselblad", model: "H6D-50c", price: 500, description:"medium format, amazing digital quality!", location: "Brussels")
