n, m = gets.chomp.split.map(&:to_i)

corrects = []
incorrect = 0

m.times do
  p, s = gets.chomp.split
  next if corrects.include?(p)
  if s == 'WA'
    incorrect += 1
  else
    corrects << p
  end
end

puts "#{corrects.size} #{incorrect}"
