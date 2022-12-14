# frozen_string_literal: true

# Task

# Given a base-10 integer, n, convert it to binary (base-2). Then find and print
# the base-10 integer denoting the maximum number of consecutive 1's in n's
# binary representation.

# Input Format

# A single integer, n.

# Constraints

# * 1 <= n <= 10**6

# Output Format

# Print a single base-10 integer denoting the maximum number of consecutive 1's
# in the binary representation of n.

# Sample Input 1

# 5

# Sample Output 1

# 1

# Sample Input 2

# 13

# Sample Output 2

# 2

# Explanation

# Sample Case 1: The binary representation of 5 is 101, so the maximum number of
# consecutive 1's is 1.

# Sample Case 2: The binary representation of 13 is 1101, so the maximum number
# of consecutive 1's is 2.

n = gets.to_i
str = n.to_s(2)

puts str.split('0').max.length
