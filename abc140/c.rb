gets
b = gets.split.map(&:to_i).push(10 ** 5)

arr = []
b.each_with_index do |bi, index|
  if index == 0
    arr.push(bi)
  else
    arr.push([bi, b[index - 1]].min)
  end
end

puts arr.sum
