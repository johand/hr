# frozen_string_literal: true

# Task

# Given an array, a, of size n distinct elements, sort the array in ascending
# order using the Bubble Sort algorithm above. Once sorted, print the following
# 3 lines:

# 1. Array is sorted in numSwaps swaps. where numSwaps is the number of swaps
# that took place.

# 2. First Element: firstElement where firstElement is the first element in the
# sorted array.

# 3. Last Element: lastElement where lastElement is the last element in the
# sorted array.

# Hint: To complete this challenge, you will need to add a variable that keeps a
# running tally of all swaps that occur during execution.

# Input Format

# The first line contains an integer, n, denoting the number of elements in
# array a.
# The second line contains n space-separated integers describing the respective
# values of a0 a1,...,an-1.

# Constraints

# * 2 <= n <= 600
# * 1 < ai <= 2 x 10**6, where 0 <= i < n

# Input Format

# Print the following three lines of output:

# 1. Array is sorted in numSwaps swaps. where numSwaps is the number of swaps
#    that took place.

# 2. First Element: firstElement where firstElement is the first element in the
#    sorted array.

# 3. Last Element: lastElement where lastElement is the last element in the
#    sorted array.

# Sample Input 0

# 3
# 1 2 3

# Sample Output 0

# Array is sorted in 0 swaps.
# First Element: 1
# Last Element: 3

# Explanation 0

# The array is already sorted, so 0 swaps take place and we print the necessary
# 3 lines of output shown above.

# Sample Input 1

# 3
# 3 2 1

# Sample Output 1

# Array is sorted in 3 swaps.
# First Element: 1
# Last Element: 3

# Explanation 1

# The array a = [3, 2, 1] is not sorted, so we perform the following 3 swaps:

# 1. [3, 2, 1] -> [2, 3, 1]
# 2. [2, 3, 1] -> [2, 1, 3]
# 3. [2, 1, 3] -> [1, 2, 3]

# At this point the array is sorted and we print the necessary 3 lines of output
# shown above.

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

def bubble_sort(arr)
  n = arr.length
  num_swaps = 0

  loop do
    swap = false

    (n - 1).times do |i|
      next unless arr[i] > arr[i + 1]

      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      swap = true
      num_swaps += 1
    end

    n -= 1
    break unless swap
  end

  puts "Array is sorted in #{num_swaps} swaps."
  puts "First Element: #{arr.first}"
  puts "Last Element: #{arr.last}"
end

bubble_sort(a)
