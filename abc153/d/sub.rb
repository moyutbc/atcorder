
def calc(memo, n)
  return memo[n] if memo[n]
  return 1 if n == 1

  sub = calc(memo, (n / 2.0).ceil )
  answer =  sub * 2 + 1
  memo[n] = answer
  return answer
end

puts 1000000000000

# memo = {1=>1}
# (1..10**6).map do |num|
#   # puts "#{num}: #{calc(memo, num)}"
#   calc(memo, num)
# end
# puts memo