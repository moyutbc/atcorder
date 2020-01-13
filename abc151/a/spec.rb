require "open3"

actual, status = Open3.capture2('ruby main.rb < sample-1.in')
expected, status = Open3.capture2('cat sample-1.out')

if actual == expected
    puts 'OK'
else
  puts 'NG'
  p actual
  p expected
end

actual, status = Open3.capture2('ruby main.rb < sample-2.in')
expected, status = Open3.capture2('cat sample-2.out')

if actual == expected
    puts 'OK'
else
  puts 'NG'
  p actual
  p expected
end

