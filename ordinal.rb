def number_to_ordinal(num)
  num = num.to_i
  if (10...20) === num
    puts "#{num}th"
  else
    g = %w[ th st nd rd th th th th th th ]
    a = num.to_s
    c = a[-1..-1].to_i
    puts a + g[c]
  end
end

puts "Pick a number between 0 and 20 inclusive."
num = gets.chomp
number_to_ordinal(num)
puts 