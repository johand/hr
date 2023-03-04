# frozen_string_literal: true

# Given two strings, determine if they share a common substring. A substring may
# be as small as one character.

# Example

# s1 = 'and'
# s2 = 'art'

# These share the common substring a.

# s1 = 'be'
# s2 = 'cat'

# These do not share a substring.

# Function Description

# Complete the function twoStrings in the editor below.

# twoStrings has the following parameter(s):

# * string s1: a string
# * string s2: another string

# Returns

# * string: either YES or NO

# Input Format

# The first line contains a single integer p, the number of test cases.

# The following p pairs of lines are as follows:

# * The first line contains string
# * The second line contains string

# Constraints

# * s1 and s2 consist of characters in the range ascii[a-z].
# * 1 <= p <= 10
# * 1 <= |s1|, |s2| <= 10 ** 5

# Output Format

# For each pair of strings, return YES or NO.

# Sample Input

# 2
# hello
# world
# hi
# world

# Sample Output

# YES
# NO

# Explanation

# We have p = 2 pairs to check:

# 1. s1 = "hello", s2 = "world". The substrings "o" and "l" are common to both
# strings.

# 2. a = "hi", b = "world". s1 and s2 share no common substrings.

# Complete the 'twoStrings' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. STRING s1
#  2. STRING s2

def two_strings(s1, s2)
  arr = s1.chars & s2.chars
  arr.empty? ? 'NO' : 'YES'

  # Another solution
  # s1.chars.intersect?(s2.chars) ? 'YES' : 'NO'
end

q = gets.strip.to_i

q.times do |_q_itr|
  s1 = gets.chomp

  s2 = gets.chomp

  puts two_strings(s1, s2)
end
