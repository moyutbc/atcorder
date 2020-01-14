n = gets.chomp.to_i
costs = gets.chomp.split.map(&:to_i)

puts costs.map { |c| (n ** 2) * (n ** 2 - 1)  * c * 2 ** n }.sum % (10 ** 9 + 7)