a, b, k = gets.chomp.split.map(&:to_i)

puts "#{a-k} #{b}" if a >= k
puts "0 #{a + b - k}" if a < k && k <= b + a
puts "0 0" if a + b < k