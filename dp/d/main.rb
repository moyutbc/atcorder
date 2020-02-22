# 同じ商品は一度しか使えない場合
n, w = gets.chomp.split.map(&:to_i)

values = (0..n).to_a.map { Array.new(w, 0) }

n.times do |i|
  wi, vi = gets.chomp.split.map(&:to_i)

  for j in 0..w do
    values[i][j-1] = j-1 < wi \
                   ?  values[i-1][j-1].to_i \
                   : [values[i-1][j-1].to_i, values[i-1][j-wi].to_i + vi].max
  end

  # puts values[i].join(',')
end

p values.flatten.max

# # 同じ商品を何度も使って良い場合
# n, w = gets.chomp.split.map(&:to_i)
# 
# values = Array.new(w+1, 0)
# n.times do
#   wi, vi = gets.chomp.split.map(&:to_i)
# 
#   for i in wi...values.size do
#     values[i] = [values[i], values[i-wi] + vi].max
#   end
# 
#   p values
# end
# 
# p values.max
