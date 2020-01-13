n, k = gets.split.map(&:to_i)
puts gets.split.map(&:to_i).select { |h| h >= k }.size
