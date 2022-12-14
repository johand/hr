# frozen_string_literal: true

# Task

# You are given two classes, Person and Student, where Person is the base class
# and Student is the derived class. Completed code for Person and a declaration
# for Student are provided for you in the editor. Observe that Student inherits
# all the properties of Person.

# Complete the Student class by writing the following:

# * A Student class constructor, which has 4 parameters:
#   1. A string, firstName.
#   2. A string, lastName.
#   3. An integer, id.
#   4. An integer array (or vector) of test scores, scores.

# * A char calculate() method that calculates a Student object's average and
# returns the grade character representative of their calculated average:

# Grading Scale

# Letter | Average (a)
# -----------------------
# O      | 90 <= a <= 100
# E      | 80 <= a < 90
# A      | 70 <= a < 80
# P      | 55 <= a < 70
# D      | 40 <= a < 55
# T      | a < 10

# Input Format

# The locked stub code in your editor calls your Student class constructor and
# passes it the necessary arguments. It also calls the calculate method (which
# takes no arguments).

# You are not responsible for reading the following input from stdin:

# The first line contains firstName, lastName, and id, respectively. The second
# line contains the number of test scores. The third line of space-separated
# integers describes scores.

# Constraints

# * 1 <= |firstName|,|lastName| <= 10
# * |id| == 7
# * 0 <= score, average <= 100

# Output Format

# This is handled by the locked stub code in your editor. Your output will be
# correct if your Student class constructor and calculate() method are properly
# implemented.

# Sample Input

# Heraldo Memelli 8135627
# 2
# 100 80

# Sample Output

# Name: Memelli, Heraldo
# ID: 8135627
# Grade: O

# Explanation

# This student had 2 scores to average: 100 and 80. The student's average grade
# is (100 + 80) / 2 = 90. An average grade of 90 corresponds to the letter grade
# O, so our calculate() method should return the character 'O'.

class Person
  def initialize(first_name, last_name, id)
    @first_name = first_name
    @last_name = last_name
    @id = id
  end

  def print_person
    print('Name: ', @last_name, ', ' + @first_name, "\nID: ", @id)
  end
end

class Student < Person
  attr_reader :scores

  def initialize(first_name, last_name, id, scores)
    super(first_name, last_name, id)
    @scores = scores
  end

  def calculate
    avg = scores.sum / scores.length

    case avg
    when 90..100 then 'O'
    when 80...90 then 'E'
    when 70...80 then 'A'
    when 55...70 then 'P'
    when 40...55 then 'D'
    else 'T'
    end
  end
end

input = gets.split
first_name = input[0]
last_name = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip.split.map!(&:to_i)
s = Student.new(first_name, last_name, id, scores)
s.print_person
print("\nGrade: #{s.calculate}")
