h, n = gets.chomp.split.map(&:to_i)
sum_a = gets.chomp.split.map(&:to_i).sum
puts h <= sum_a ? 'Yes' : 'No'