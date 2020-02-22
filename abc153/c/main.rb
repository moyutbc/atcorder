n, k = gets.chomp.split.map(&:to_i)
hs = gets.chomp.split.map(&:to_i).sort.reverse

hs.shift(k)
puts hs.sum