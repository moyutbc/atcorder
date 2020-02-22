s, t = gets.chomp.split
a, b = gets.chomp.split.map(&:to_i)
u = gets.chomp

a -= 1 if u == s
b -= 1 if u == t

puts [a, b].join(' ')
