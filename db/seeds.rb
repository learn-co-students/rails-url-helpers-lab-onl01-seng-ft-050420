# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all

50.times do |index|
    Student.create!(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name)
  end

  p "Created #{Student.count} students"