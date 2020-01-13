window, curtain = gets.split(' ').map(&:to_i)
puts (window - curtain * 2).positive? ? window - curtain * 2 : 0
