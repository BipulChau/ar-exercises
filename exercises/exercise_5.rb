require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue of all stores is #{@total_revenue}"

@average_annual_revenue = Store.average(:annual_revenue)
puts "Avergae annual revenue of all stores is #{@average_annual_revenue}"

@stores_revenue_1M = Store.where('annual_revenue >= 1000000').count
puts "Number of stores that are generating more than 1M annual revenue is #{@stores_revenue_1M}"