# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 4 fake flats...'
Flat.destroy_all
4.times do
  flat = Flat.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    description: Faker::Company.catch_phrase,
    price_per_night: (30..100).to_a.sample,
    number_of_guests: (1..6).to_a.sample
  )
  flat.save!
end
puts 'Finished!'
