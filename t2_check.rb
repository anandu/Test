#!/usr/bin/ruby
unless ARGV.length == 2 
puts "Usage:  ./check.rb value2reach startinputl"
exit
end
count = 450 
count1 = 250 
t = 0
#puts count
#puts count1
while count != count1
  t = t + 1
  count = count + t
  puts "new count", count
    if count != count1
      t = t + 1
      count = count - t
     puts count
    end
end
#  count += 1
#end
