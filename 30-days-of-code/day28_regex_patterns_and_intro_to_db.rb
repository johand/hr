# frozen_string_literal: true

# Task

# Consider a database table, Emails, which has the attributes First Name and
# Email ID. Given N rows of data simulating the Emails table, print an
# alphabetically-ordered list of people whose email address ends in @gmail.com.

# Input Format

# The first line contains an integer, N, total number of rows in the table.
# Each of the N subsequent lines contains 2 space-separated strings denoting a
# person's first name and email ID, respectively.

# Constraints

# * 2 <= N <= 30
# * Each of the first names consists of lower case letters [a - z] only.
# * Each of the email IDs consists of lower case letters [a - z], @ and only.
# * The length of the first name is no longer than 20.
# * The length of the email ID is no longer than 50.

# Output Format

# Print an alphabetically-ordered list of first names for every user with a
# gmail account. Each name must be printed on a new line.

# Sample Input

# 6
# riya riya@gmail.com
# julia julia@julia.me
# julia sjulia@gmail.com
# julia julia@gmail.com
# samantha samantha@gmail.com
# tanya tanya@gmail.com

# Sample Output

# julia
# julia
# riya
# samantha
# tanya

N = gets.to_i
result = []

N.times do |_n_itr|
  first_name_email_id = gets.rstrip.split
  first_name = first_name_email_id[0].to_s.rstrip
  email_id = first_name_email_id[1].to_s.rstrip
  result << first_name if email_id =~ /@gmail\.com$/
end

puts result.sort
