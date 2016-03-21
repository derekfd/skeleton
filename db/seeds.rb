# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

league = FandoLeague.find_or_create_by(name: "Top 1", contest_date: "2016-03-29", max_user: 10, user: user)
league = FandoLeague.find_or_create_by(name: "Top 3", contest_date: "2016-03-29", max_user: 10, user: user)
league = FandoLeague.find_or_create_by(name: "All Stars", contest_date: "2016-04-2", max_user: 10, user: user)
