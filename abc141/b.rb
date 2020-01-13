chars = gets.chomp.chars
test_odd = (chars.each_slice(2).map { |e| e[0] }.uniq - ['R', 'U', 'D']).size.zero?
test_even = (chars.each_slice(2).map { |e| e[1] }.compact.uniq - ['L', 'U', 'D']).size.zero?
puts (test_odd && test_even) ? 'Yes' : 'No'
