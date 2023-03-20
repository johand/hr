# frozen_string_literal: true

# You are given q queries. Each query is of the form two integers described
# below:

# - 1 x: Insert x in your data structure.
# - 2 y: Delete one occurence of y from your data structure, if present.
# - 3 z: Check if any integer is present whose frequency is exactly z.
# If yes, print 1 else 0.

# The queries are given in the form of a 2-D array of size q where queries[i][0]
# contains the operation, and queries[i][1] contains the data element.

# Example

# queries = [(1, 1), (2, 2), (3, 2), (1, 1), (1, 1), (2, 1),(3, 2)]

# Example

# queries = [(1, 1), (2, 2), (3, 2), (1, 1), (1, 1), (2, 1), (3, 2)]

# The results of each operation are:

# Operation   Array   Output
# (1,1)       [1]
# (2,2)       [1]
# (3,2)                0
# (1,1)       [1,1]
# (1,1)       [1,1,1]
# (2,1)       [1,1]
# (3,2)                1

# Return an array with the output: [0, 1].

# Function Description

# Complete the freqQuery function in the editor below.

# freqQuery has the following parameter(s):

# * int queries[q][2]: a 2-d array of integers

# Returns

# - int[]: the results of queries of type 3

# Input Format

# The first line contains of an integer q, the number of queries.
# Each of the next q lines contains two space-separated integers, queries[i][0]
# and queries[i][1].

# Constraints

# * 1 <= q <= 10 ** 5
# * 1 <= x, y, z <= 10 ** 9
# * All queries[i][0] ∈  {1, 2, 3}
# * 1 <= queries[i][1] <= 10 ** 9

# Sample Input 0

# 8
# 1 5
# 1 6
# 3 2
# 1 10
# 1 10
# 1 6
# 2 5
# 3 2

# Sample Output 0

# 0
# 1

# Explanation 0

# For the first query of type 3, there is no integer whose frequency is
# 2 (array = [5, 6]). So answer is 0.

# For the second query of type 3, there are two integers in
# array = [6, 10, 10, 6] whose frequency is 2 (integers = 6 and 10).
# So, the answer is 1.

# Sample Input 1

# 4
# 3 4
# 2 1003
# 1 16
# 3 1

# Sample Output 1

# 0
# 1

# Explanation 1

# For the first query of type 3, there is no integer of frequency 4. The answer
# is 0. For the second query of type 3, there is one integer, 16 of frequency 1
# so the answer is 1.

# Sample Input 2

# 10
# 1 3
# 2 3
# 3 2
# 1 4
# 1 5
# 1 5
# 1 4
# 3 2
# 2 4
# 3 2

# Sample Output 2

# 0
# 1
# 1

# Explanation 2

# When the first output query is run, the array is empty. We insert two 4's and
# two 5's before the second output query, arr = [4, 5, 5, 4] so there are two
# instances of elements occurring twice. We delete a 4 and run the same
# query. Now only the instances of 5 satisfy the query.

# Complete the freqQuery function below.

def freq_query(queries)
  freq = Hash.new { 0 }
  result = []

  queries.each do |q|
    v = q[1]

    case q[0]
    when 1
      freq[v] += 1
    when 2
      freq[v] -= 1 if freq[v].positive?
    when 3
      result << (freq.value?(v) ? 1 : 0)
    end
  end

  result

  # Another solution

  # if q[0] == 1
  #   freq[v] += 1
  # elsif q[0] == 2
  #   freq[v] -= 1 if freq[v].positive?
  # elsif q[0] == 3
  #   result << (freq.value?(v) ? 1 : 0)
  # end
end

q = gets.strip.to_i
queries = Array.new(q)

q.times do |i|
  queries[i] = gets.rstrip.split.map(&:to_i)
end

puts freq_query(queries)
