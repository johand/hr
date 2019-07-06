# frozen_string_literal: true

# Task

# A level-order traversal, also known as a breadth-first search, visits each
# level of a tree's nodes from left to right, top to bottom. You are given a
# pointer, root, pointing to the root of a binary search tree. Complete the
# levelOrder function provided in your editor so that it prints the level-order
# traversal of the binary search tree.

# Hint: You'll find a queue helpful in completing this challenge.

# Input Format

# The locked stub code in your editor reads the following inputs and assembles
# them into a BST:
# The first line contains an integer, T (the number of test cases).
# The subsequent lines each contain an integer, data, denoting the value of an
# element that must be added to the BST.

# Output Format

# Print the data value of each node in the tree's level-order traversal as a
# single line of N space-separated integers.

# Sample Input

# 6
# 3
# 5
# 4
# 7
# 2
# 1

# Sample Output

# 3 2 5 1 4 7

# Explanation

# The input forms the following binary search tree:

# Binary Search Tree

#     3     Level 0
#    / \
#   2   5   Level 1
#  /   / \
# 1   4   7 Level 2

# We traverse each level of the tree from the root downward, and we process the
# nodes at each level from left to right. The resulting level-order traversal is
# 3 -> 2 -> 5 -> 1 -> 4 -> 7, and we print these data values as a single line of
# space-separated integers.

class Node
  attr_accessor :left, :right, :data

  def initialize(data)
    @left = @right = nil
    @data = data
  end
end

class Solution
  def insert(root, data)
    if root.nil?
      return Node.new(data)
    else
      if data <= root.data
        cur = insert(root.left, data)
        root.left = cur
      else
        cur = insert(root.right, data)
        root.right = cur
      end
    end

    root
  end

  def level_order(root)
    queue = []
    queue << root unless root.nil?
    result = []

    until queue.empty?
      node = queue.shift
      queue << node.left unless node.left.nil?
      queue << node.right unless node.right.nil?
      result << node.data
    end

    puts result.join(' ')
  end
end

my_tree = Solution.new
root = nil
T = gets.to_i

(1..T).each do |_i|
  data = gets.to_i
  root = my_tree.insert(root, data)
end

my_tree.level_order(root)
