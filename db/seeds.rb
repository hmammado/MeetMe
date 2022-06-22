# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

City.destroy_all
Country.destroy_all
Timezone.destroy_all
Meeting.destroy_all

country = Country.create!(name: 'Spain')
timezone = Timezone.create!(name: 'Central European Summer Time', difference: '+2')

city = City.create!(name: 'Barcelona', country: country, timezone: timezone)
city1 = City.create!(name: 'Boston', country: country, timezone: timezone)
city2 = City.create!(name: 'Baku', country: country, timezone: timezone)
city3 = City.create!(name: 'London', country: country, timezone: timezone)
city4 = City.create!(name: 'Tokyo', country: country, timezone: timezone)
