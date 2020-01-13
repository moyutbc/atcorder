n, k, m = gets.chomp.split.map(&:to_i)
results = gets.chomp.split.map(&:to_i)

x = (m * n - results.sum).ceil

if x <= k && x < 0
    puts '0'
elsif x <= k
    puts x
else
    puts '-1'
end