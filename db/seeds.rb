# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

country = Country.create!(name: 'Spain')
timezone = Timezone.create!(name: 'Central European Summer Time', difference: '+2')
meeting  = Meeting.create!(meeting_time: '12:00', meeting_date: '23/05/2022')

city = City.create!(name: 'Barcelona', country: country, timezone: timezone, meeting: meeting )
