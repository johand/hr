# frozen_string_literal: true

# Task

# The height of a binary search tree is the number of edges between the tree's
# root and its furthest leaf. You are given a pointer, root, pointing to the
# root of a binary search tree. Complete the getHeight function provided in your
# editor so that it returns the height of the binary search tree.

# Input Format

# The locked stub code in your editor reads the following inputs and assembles
# them into a binary search tree: The first line contains an integer, n,
# denoting the number of nodes in the tree.  Each of the n subsequent lines
# contains an integer, data, denoting the value of an element that must be added
# to the BST.

# Output Format

# The locked stub code in your editor will print the integer returned by your
# getHeight function denoting the height of the BST.

# Sample Input

# 7
# 3
# 5
# 2
# 1
# 4
# 6
# 7

# Sample Output

# 3

# Explanation

# The input forms the following BST:

# Binary Search Tree

#     3
#    / \
#   2   5
#  /   / \
# 1   4   6
#          \
#           7

# The longest root-to-leaf path is shown below:

#      3
#     / \
#    /   *
#   2     5
#  /     / \
# 1     4   *
#            6
#             \
#              *
#               7

# There are 4 nodes in this path that are connected by 3 edges, meaning our
# BST's height = 3. Thus, we print 3 as our answer.

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

  def get_height(root)
    return -1 if root.nil?

    left = get_height(root.left)
    right = get_height(root.right)
    1 + (left > right ? left : right)
  end
end

my_tree = Solution.new
root = nil
T = gets.to_i

(1..T).each do |_i|
  data = gets.to_i
  root = my_tree.insert(root, data)
end

height = my_tree.get_height(root)
puts height
