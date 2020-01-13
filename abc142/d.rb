require 'prime'

a, b = gets.split.map(&:to_i)
a_prime = (a.prime_division.transpose[0] || []).push(1)
b_prime = (b.prime_division.transpose[0] || []).push(1)
puts (a_prime & b_prime).size
