n = gets.to_i
k = gets.to_i

keta = n.to_s.size
arr = [*(1..n)].map { |num| "%0#{keta}d" % num }

#p arr

arr = arr.select { |el| el.count('0') == keta - k }

p arr

puts arr.size
