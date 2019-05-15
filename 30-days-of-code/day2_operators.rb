# Task

# Given the meal price (base cost of a meal), tip percent (the percentage of the
# meal price being added as tip), and tax percent (the percentage of the meal
# price being added as tax) for a meal, find and print the meal's total cost.

# Note: Be sure to use precise values for your calculations, or you may end up
# with an incorrectly rounded result!

# Input Format

# There are 3 lines of numeric input:
# The first line has a double, mealCost (the cost of the meal before tax and
# tip).
# The second line has an integer, tipPercent (the percentage of mealCost being
# added as tip).
# The third line has an integer, taxPercent (the percentage of mealCost being
# added as tax).

# Output Format

# Print the total meal cost, where totalCost is the rounded integer result of
# the entire bill (mealCost with added tax and tip).

# Sample Input

# 12.00
# 20
# 8

# Sample Output

# 15

require 'json'
require 'stringio'

def solve(meal_cost, tip_percent, tax_percent)
  tip = meal_cost * (tip_percent.to_f / 100)
  tax = meal_cost * (tax_percent.to_f / 100)
  total_cost = (meal_cost + tip + tax).round
  total_cost
end

meal_cost = gets.to_f
tip_percent = gets.to_i
tax_percent = gets.to_i
p solve(meal_cost, tip_percent, tax_percent)
