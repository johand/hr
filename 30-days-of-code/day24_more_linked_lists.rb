# frozen_string_literal: true

# Task

# A Node class is provided for you in the editor. A Node object has an integer
# data field, data, and a Node instance pointer, next, pointing to another node
# (i.e.: the next node in a list).

# A removeDuplicates function is declared in your editor, which takes a pointer
# to the head node of a linked list as a parameter. Complete removeDuplicates so
# that it deletes any duplicate nodes from the list and returns the head of the
# updated list.

# NOTE: The head pointer may be null, indicating that the list is empty. Be sure
# to reset your next pointer when performing deletions to avoid breaking the
# list.

# Input Format

# You do not need to read any input from stdin. The following input is handled
# by the locked stub code and passed to the removeDuplicates function:
# The first line contains an integer, N, the number of nodes to be inserted.
# The N subsequent lines each contain an integer describing the data value of a
# node being inserted at the list's tail.

# Constraints

# * The data elements of the linked list argument will always be in
#   non-decreasing order.

# Output Format

# Your removeDuplicates function should return the head of the updated linked
# list. The locked stub code in your editor will print the returned list to
# stdout.

# Sample Input

# 6
# 1
# 2
# 2
# 3
# 3
# 4

# Sample Output

# 1 2 3 4

# Explanation

# N = 6, and our non-decreasing list is {1, 2, 2, 3, 3, 4}. The values 2 and 3
# both occur twice in the list, so we remove the two duplicate nodes. We then
# return our updated (ascending) list, which is {1, 2, 3, 4}.

class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class Solution
  def remove_duplicates(head)
    return if head.nil?

    node = head

    until node.next.nil?
      if node.data == node.next.data
        node.next = node.next.next
      else
        node = node.next
      end
    end

    head
  end

  def insert(head, value)
    p = Node.new(value)

    if head.nil?
      head = p
    elsif head.next.nil?
      head.next = p
    else
      current = head
      current = current.next until current.next.nil?
      current.next = p
    end

    head
  end

  def display(head)
    current = head

    while current
      print current.data, ' '
      current = current.next
    end
  end
end

mylist = Solution.new
head = nil
T = gets.to_i

(1..T).each do |_i|
  data = gets.to_i
  head = mylist.insert(head, data)
end

head = mylist.remove_duplicates(head)
mylist.display(head)
