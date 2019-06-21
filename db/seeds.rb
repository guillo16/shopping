# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clering database'

Car.destroy_all

puts 'creating cars'

Car.create!(
  name:"lamborgini",
  sku:"ferr",
  photo1:"https://images.unsplash.com/photo-1536332016596-dc50468cbf41?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  category:"luxury",
  brand: "lambo",

  )
Car.create!(
  name:"Ferrari",
  sku: "456",
  photo1:"https://images.unsplash.com/photo-1537758239362-40eda0496bc9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80",
  category:"exclusive",
  brand:"ferrari",

  )
# Car.create!(
#   name:,
#   sku:,
#   photo1:,
#   category:,
#   brand:,
# price:,
#   )
puts 'finished'
