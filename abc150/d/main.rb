n, m = gets.chomp.split.map(&:to_i)
aa = gets.chomp.split.map(&:to_i).uniq

aa_max = aa.max

candidates = []
num = 0
while num += 1
  tmp = aa_max * (num + 0.5)
  if tmp <= m
    candidates << tmp
  else
    break
  end
end

puts candidates.select { |tmp|
  aa.all? do |a|
    num = tmp / (a * 1.0) - 0.5
    num == num.to_i
  end
}.size