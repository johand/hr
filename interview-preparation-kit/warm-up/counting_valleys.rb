# frozen_string_literal: true

# An avid hiker keeps meticulous records of their hikes. During the last hike that
# took exactly _steps_ steps, for every step it was noted if it was an uphill, U,
# or a downhill, D step. Hikes always start and end at sea level, and each step up
# or down represents a 1 unit change in altitude. We define the following terms:

# * A mountain is a sequence of consecutive steps above sea level, starting with a
# step up from sea level and ending with a step down to sea level.

# * A valley is a sequence of consecutive steps below sea level, starting with a
# step down from sea level and ending with a step up to sea level.

# Given the sequence of up and down steps during a hike, find and print the number
# of valleys walked through.

# Example

# steps = 8 path = [DDUUUUDD]

# The hiker first enters a valley 2 units deep. Then they climb out and up onto a
# mountain 2 units high. Finally, the hiker returns to sea level and ends the
# hike.

# Function Description

# Complete the countingValleys function in the editor below.

# countingValleys has the following parameter(s):
# * int steps: the number of steps on the hike
# * string path: a string describing the path

# Returns
# * int: the number of valleys traversed

# Input Format

# The first line contains an integer steps, the number of steps in the hike.
# The second line contains a single string path, of setps characters that describe
# the path.

# Constraints

# * 2 <= steps <= 10 ** 6
# * path[i] ∈ {UD}

# Sample Input
# 8
# UDDDUDUU

# Sample Output
# 1

# Explanation

# If we represent _ as sea level, a step up as /, and a step down as \, the hike
# can be drawn as:

# _/\      _
#    \    /
#     \/\/

# The hiker enters and leaves one valley.

# Complete the 'countingValleys' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER steps
#  2. STRING path

def counting_valleys(_steps, path)
  mountains = 0
  valleys = 0

  path.chars.each do |s|
    mountains -= 1 if s == 'D'
    next unless s == 'U'

    mountains += 1
    valleys += 1 if mountains.zero?
  end

  valleys
end

steps = gets.strip.to_i
path = gets.chomp

puts counting_valleys(steps, path)
