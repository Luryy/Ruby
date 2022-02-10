$i = 0
$num = 5

puts "While:\n"
while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

puts "\nUntil:\n"
$i = 0
$num = 5

until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end


puts "\nFor:\n"
for i in 0..5
   if i > 2 then
      break
   end
   next unless i != 1
   puts "Value of local variable is #{i}"
   redo if i > 2
end


