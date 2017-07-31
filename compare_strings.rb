### How many characters need to be deleted to make two strings congruent? 
def remove_common_elements(y, z)
  y.length.times do |n|
    if z.include? "#{y[n]}"
      z.sub!(y[n], '')
    end
  end
  return z
end

def string_set_up str
  str = str.chars.sort.join
end

a = 'abcdeefgtybc'
b = 'acegikeergerger'
total_length = a.length + b.length
#puts "total: #{total_length}"

y = string_set_up a
z = string_set_up b

n = remove_common_elements(y, z)
# puts "total removed: #{b.length - n.length}"
# puts "answer: #{total_length - 2*(b.length - n.length)}"
puts total_length - 2*(b.length - n.length)