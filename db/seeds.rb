# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin_user = AdminUser.find_or_initialize_by(email: 'admin@example.com')
admin_user.password = 'password'
admin_user.password_confirmation = 'password'
admin_user.save!

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

# ["Header", "Footer", "Sidebar"].each do |loc|
#   Location.create!(:location => loc)
# end

location1 = Location.find_or_initialize_by(location: 'Header')
location1.location = 'Header'
location1.save!

location2 = Location.find_or_initialize_by(location: 'Footer')
location2.location = 'Footer'
location2.save!

location3 = Location.find_or_initialize_by(location: 'Sidebar')
location3.location = 'Sidebar'
location3.save!