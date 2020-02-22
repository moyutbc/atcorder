require 'ostruct'

n, k = gets.chomp.split.map(&:to_i)
rr, ss, pp = gets.chomp.split.map(&:to_i)
t = gets.chomp.chars

# queue = [ OpenStruct.new({ history: [], score: 0 }) ]
# 
# best = OpenStruct.new({ history: [], score: 0 })
# while current = queue.shift
#   if current.history.size >= n
#     puts current
#     best = current.score >= best.score ? current : best
#     next
#   end
# 
#   # グーが出せる
#   unless current.history[-k] == 'r'
#     score = current.score
#     score = current.score + rr if t[current.history.size] == 's'
#     history = current.history +  ['r']
#     queue << OpenStruct.new({ score: score, history: history })
#   end
# 
#   # チョキが出せる
#   unless current.history[-k] == 's'
#     score = current.score
#     score = current.score + ss if t[current.history.size] == 'p'
#     history = current.history +  ['s']
#     queue << OpenStruct.new({ score: score, history: history })
#   end
# 
#   # パーが出せる
#   unless current.history[-k] == 'p'
#     score = current.score
#     score = current.score + pp if t[current.history.size] == 'r'
#     history = current.history +  ['p']
#     queue << OpenStruct.new({ score: score, history: history })
#   end
# 
#   p queue
# end
# puts best.score

memo = { history: [], score: 0 }

t.each_with_index do |ch, index|
  if index - k >= 0 && ch == t[index - k]
  else
    memo[:score] += case ch
    when 'r'
        pp
    when 's'
        rr
    when 'p'
        ss
    end
  end
end

puts memo