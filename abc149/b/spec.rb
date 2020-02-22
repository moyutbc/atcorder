require "open3"

(1..2).each do |index|
  actual, status = Open3.capture2("ruby main.rb < sample-#{index}.in")
  expected, status = Open3.capture2("cat sample-#{index}.out")
  
  if actual == expected
      puts 'OK'
  else
    puts 'NG'
    p actual
    p expected
  end
end