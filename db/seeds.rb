# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.create!([{ name: "RubyHill", email: "rubyhill@gmail.com", phone: "1111111111"}, { name: "Pasha", email: "pasha@gmail.com", phone: "1111111111"}])
Table.create!([{ table_name: "Table1", min_guests: 4, max_guests: 8, restaurant_id: Restaurant.first.id}, { table_name: "Table2", min_guests: 1, max_guests: 4, restaurant_id: Restaurant.first.id}])
Table.create!([{ table_name: "PashaT1", min_guests: 4, max_guests: 8, restaurant_id: Restaurant.second.id}, { table_name: "PashaT2", min_guests: 1, max_guests: 4, restaurant_id: Restaurant.second.id}])

RestaurantShift.create!([{ start_time: "09:00 AM", end_time: "01:00 PM", shift_type: "Morning", restaurant_id: Restaurant.first.id}, { start_time: "06:00 PM", end_time: "11:00 PM", shift_type: "Evening", restaurant_id: Restaurant.first.id}])
RestaurantShift.create!([{ start_time: "09:00 AM", end_time: "01:00 PM", shift_type: "Morning", restaurant_id: Restaurant.second.id}, { start_time: "06:00 PM", end_time: "11:00 PM", shift_type: "Evening", restaurant_id: Restaurant.second.id}])

Guest.create!(first_name: "Anushank", last_name: "Lal", email: "anushanklal@gmail.com", phone_number: "9918604922")
