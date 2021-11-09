require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(
  first_name: "Rimsha",
  last_name: "Chaudhary",
  hourly_rate: 50
)

@store1.employees.create(
  first_name: "Bunu",
  last_name: "Partner",
  hourly_rate: 75
)

@store2.employees.create(
  first_name: "Oguwa",
  last_name: "Poguwa",
  hourly_rate: 45
)

@store2.employees.create(
  first_name: "Doggie",
  last_name: "Prasad",
  hourly_rate: 40
)

