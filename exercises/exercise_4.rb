require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(
  name:"Surrey",
  annual_revenue: 224000, 
  mens_apparel: false, 
  womens_apparel: true)

Store.create(
  name:"Whistler",
  annual_revenue: 1900000, 
  mens_apparel: true, 
  womens_apparel: false)

Store.create(
  name:"Yaletown",
  annual_revenue: 1900000, 
  mens_apparel: true, 
  womens_apparel: true)


  @mens_stores = Store.where(mens_apparel: true)

  puts "@mens_stores-------------------------->"
  # p @mens_stores

  @mens_stores.each do |store|
    puts "#{store.name}: #{store.annual_revenue}"
  end

  @womens_stores = Store.where(womens_apparel: true).where('annual_revenue < 1000000')
  

  puts "@womens_stores-------------------------->"
  # p @womens_stores
  @womens_stores.each do |store|
    puts "#{store.name}: #{store.annual_revenue}"
  end

  