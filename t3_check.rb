#!/usr/bin/ruby -w
unless ARGV.length == 2 
puts "Usage:  ./check.rb value2reach startinputl"
exit
end
count = ARGV[0].to_i
count1 = ARGV[1].to_i
t = 0
#puts count
#puts count1
while count != count1
  t = t + 1
  count = count + t
  puts count
    if count != count1
      t += 1
      count -= t
  puts count
    end
end
puts "reached to", count
#  count += 1
#end
