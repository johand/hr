# frozen_string_literal: true

# Task

# The AdvancedArithmetic interface and the method declaration for the abstract
# divisorSum(n) method are provided for you in the editor below.

# Complete the implementation of Calculator class, which implements the
# AdvancedArithmetic interface. The implementation for the divisorSum(n) method
# must return the sum of all divisors of n.

# Input Format

# A single line containing an integer, n.

# Constraints

# * 1 <= n <= 1000

# Output Format

# You are not responsible for printing anything to stdout. The locked template
# code in the editor below will call your code and print the necessary output.

# Sample Input

# 6

# Sample Output

# I implemented: AdvancedArithmetic
# 12

# Explanation

# The integer 6 is evenly divisible by 1, 2, 3, and 6. Our divisorSum method
# should return the sum of these numbers, which is 1 + 2 + 3 + 6 = 12. The
# Solution class then prints I implemented: AdvancedArithmetic on the first
# line, followed by the sum returned by divisorSum (which is 12) on the second
# line.

module AdvancedArithmetic
  def divisor_sum(n)
    raise NotImplementedError
  end
end

class Calculator
  include AdvancedArithmetic

  def divisor_sum(n)
    (1..n).select { |i| i if (n % i).zero? }.reduce(:+)
  end
end

n = gets.to_i
my_calculator = Calculator.new
s = my_calculator.divisor_sum(n)
puts "I implemented: #{my_calculator.singleton_class.included_modules.first}"
puts s
