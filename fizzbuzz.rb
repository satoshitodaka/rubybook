x = gets.to_i
y = 0
while y < x
  y += 1
  if y % 5 == 0 && y % 3 == 0
    puts 'fizzbuzz'    
  elsif y % 3 == 0
    puts 'Fizz'
  elsif y % 5 == 0
    puts 'Buzz'
  else
    puts y    
  end
end
