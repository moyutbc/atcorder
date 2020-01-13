n = gets.to_i
puts n.even? ? 0.5 : 1.0 * (n+1) / (2 * n)
