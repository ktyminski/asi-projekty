# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
147.times do |t|
    m = Motocycle.new
    m.Brand = Faker::App.name
    m.Model = Faker::App.name
    m.Year = Faker::Date.backward(10000)
    m.Capacity = Faker::Number.number(3)
    m.Horsepower = Faker::Number.number(3)
    m.save
end