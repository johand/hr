# Given a 6 x 6 2D Array, A:

# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 0 0 0 0
# 0 0 0 0 0 0
# 0 0 0 0 0 0

# We define an hourglass in A to be a subset of values with indices falling in
# this pattern in A's graphical representation:

# a b c
#   d
# e f g

# There are 16 hourglasses in A, and an hourglass sum is the sum of an
# hourglass' values.

# Task

# Calculate the hourglass sum for every hourglass in A, then print the maximum
# hourglass sum.

# Input Format

# There are 6 lines of input, where each line contains 6 space-separated
# integers describing 2D Array A; every value in A will be in the inclusive
# range of -9 to 9.

# Constraints

# * -9 <= A[i][j] <= 9
# 0 <= i, j <= 5

# Output Format

# Print the largest (maximum) hourglass sum found in A.

# Sample Input

# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 2 4 4 0
# 0 0 0 2 0 0
# 0 0 1 2 4 0

# Sample Output

# 19

# Explanation

# A contains the following hourglasses:

# 1 1 1   1 1 0   1 0 0   0 0 0
#   1       0       0       0
# 1 1 1   1 1 0   1 0 0   0 0 0

# 0 1 0   1 0 0   0 0 0   0 0 0
#   1       1       0       0
# 0 0 2   0 2 4   2 4 4   4 4 0

# 1 1 1   1 1 0   1 0 0   0 0 0
#   0       2       4       4
# 0 0 0   0 0 2   0 2 0   2 0 0

# 0 0 2   0 2 4   2 4 4   4 4 0
#   0       0       2       0
# 0 0 1   0 1 2   1 2 4   2 4 0

# The hourglass with the maximum sum (19) is:

# 2 4 4
#   2
# 1 2 4

# Complete the 'hourglassSum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.


def hour_glass_sum(arr):
    result = []

    for ri in range(len(arr) - 1):
        if ri > 3:
            break

        for ci in range(len(arr) - 1):
            if ci > 3:
                continue

            top = arr[ri][ci] + arr[ri][ci + 1] + arr[ri][ci + 2]
            center = arr[ri + 1][ci + 1]
            bottom = arr[ri + 2][ci] + arr[ri + 2][ci + 1] + arr[ri + 2][ci + 2]

            result.append(top + center + bottom)

    return max(result)


arr = []

for _ in range(6):
    arr.append(list(map(int, input().rstrip().split())))

print(hour_glass_sum(arr))
