# frozen_string_literal: true

# Task

# Given an array, A, of N integers, print A's elements in reverse order as a
# single line of space-separated numbers.

# Input Format

# The first line contains an integer, N (the size of our array).
# The second line contains N space-separated integers describing array A's
# elements.

# Constraints

# * 1 <= N <= 1000
# * 1 <= Ai <= 10000, where Ai is the ith integer in the Array

# Output Format

# Print the elements of array A in reverse order as a single line of
# space-separated numbers.

# Sample Input

# 4
# 1 4 3 2

# Sample Output

# 2 3 4 1

n = gets.to_i

arr = gets.rstrip.split.map(&:to_i).join(' ').reverse
puts arr
