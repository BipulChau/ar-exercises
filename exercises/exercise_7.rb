require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter a store name:"
print "> "
store_name = gets.chomp

puts "Carries men's clothing? [Y/N]:"
print "> "
mens_apparel = gets.chomp.downcase == "y" #any char except Y or y will be considered null

puts "Carries women's clothing? [Y/N]:"
print "> "
womens_apparel = gets.chomp.downcase == "y" #any char except Y or y will be considered null

puts "Enter annual revenue:"
print "> "
annual_revenue = gets.chomp.to_i

result = Store.create(
  name: store_name,
  mens_apparel: mens_apparel,
  womens_apparel: womens_apparel,
  annual_revenue: annual_revenue
  )

puts result.errors.full_messages #https://amzotti.github.io/rails/2015/01/01/how-do-rails-error-messages-work/
