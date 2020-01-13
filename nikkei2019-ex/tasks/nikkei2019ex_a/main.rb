input = gets.chomp

dict = (0...input.size).each_with_object({}) do |index, memo|
  key = input.slice(0, index + 1)
  memo[key] = index + 1
end

dict.sort.map(&:last).each { |pos| puts pos }
