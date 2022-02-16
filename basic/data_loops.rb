array = [:test, :param, :third]

puts "array.each_with_index"
array.each_with_index do |value, index|
	puts "#{index} value: #{value}"
end

puts "\narray.empty?"
puts array.empty?

puts "\narray.join & tr"
puts array.join ","
puts array.join(",").tr("a", "$")

puts "\narray.count"
puts array.count { |array| array == "test" }

puts "\narray.sort.last"
puts array.sort { |array1, array2| array1 <=> array2 }.last


puts "\nstring.chars.each_with_index"
string = "test"
string.chars.each_with_index do |value, index|
	puts "#{index} value: #{value}"
end

puts "\nstring.strip"
string = " \s\nte\st  \n \t "
puts string
puts string.strip

puts "\nrand"
puts rand array.size
