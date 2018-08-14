require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum "annual_revenue"
@number_of_stores = Store.count
@average_revenue = @total_revenue / @number_of_stores
@millionaires = Store.where("annual_revenue >= 1000000").count

# Outputs
pp "Company annual revenue: #{@total_revenue}"
pp "Company average revenue per store: #{@average_revenue}"
pp "Stores with annual revenue of $1,000,000+: #{@millionaires}"


# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.