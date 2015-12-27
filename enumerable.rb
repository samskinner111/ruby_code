print [1,2,3,4].collect { |i| i.to_s + "X"}.to_s + " collect method"
puts

array = [1,3,2,2,4]
# detect gives the first instance
print array.detect { |i| i.between?(2,3)}.to_s + " detect method"
puts
# select gives all instances inclusive
print array.select { |i| i.between?(2,3)}.to_s + " select method"
puts
puts array.max.to_s + " max value"

puts array.min.to_s + " min value"
puts
# map works the same as collect but I don't think is an "Enumerable" method
print [1,2,3,4].map { |i| i.to_s + "X"}.to_s + " map method"
puts
#these give two sets of methods, with some overlap
puts array.methods.join(' ')
puts
puts Enumerable.methods.join(' ')