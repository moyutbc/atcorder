n, k = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

puts nums.combination(k).to_a.reduce(0) { |sum, arr| sum += arr.max - arr.min } % (10**9 + 7)