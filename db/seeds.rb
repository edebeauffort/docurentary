# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Gadget.destroy_all
require 'faker'
30.times do

u = User.create!(email: Faker::Internet.email, password:Faker::Number.number(6))

Gadget.create!(user: u,category: ["camera", "projector", "drone"].sample, brand: ["gopro","nikon","kyocera", "sony", "sonic", "samsung", "djji"].sample, model: Faker::Commerce.product_name, price: Faker::Number.number(2), description: Faker::Lorem.sentence, location: Faker::Address.city)
end