puts "Array:\n"
ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end

puts "\nHash:\n"
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

puts "\nRanges:\n"
(10..15).each do |n|
   print n, ' '
end
