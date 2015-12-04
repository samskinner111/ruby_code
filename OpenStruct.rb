require 'ostruct'

person = OpenStruct.new
person.name    = "John Smith"
person.age     = 70
person.pension = 300

puts person.name     # -> "John Smith"
puts "As a method: #{person.age}"      # -> 70
puts "Use a symbol: #{person[:age]}"
puts "This should be nil: #{person.address}."
puts person.pension

puts  '**************'
## Use of an incorporated hash
australia = OpenStruct.new(:country => "Australia", :population => 20_000_000)
p australia   # -> <OpenStruct country="Australia" population=20000000>
## Pass in a hash
hash = { "country" => "Austria", :population => 70000000 }
data = OpenStruct.new(hash)

puts data 
p data.class
puts "What is the superclass for an OpenStruct? #{data.class.superclass}"
puts "Generate an array: #{data.each_pair.to_a}"
puts "Generate a hash: #{data.to_h}"

puts  '**************'
## Syntax for using key with blank space
measurements = OpenStruct.new("length (in inches)" => 24)
puts measurements.send("length (in inches)")  # -> 24
## Syntax for changing a value in a key/value pair
data_point = OpenStruct.new(:queued? => true)
puts data_point.queued?                       # -> true
data_point.send("queued?=",false)             # resets the hash value
puts data_point.queued?                       # -> false
puts data_point                               # hash with new value of false

puts  '**************'
## User .delete to remove a key/value pair rather than setting a value to nil
first_pet = OpenStruct.new(:name => 'Rowdy', :owner => 'John Smith')
first_pet.owner = nil
second_pet = OpenStruct.new(:name => 'Rowdy')
puts first_pet
puts first_pet == second_pet # -> false

first_pet.delete_field(:owner)
puts first_pet
puts first_pet == second_pet         # -> true
puts 'eql?'
puts first_pet.eql? second_pet    # are two objects equal

puts  '**************'

locale = OpenStruct.new(city: 'Roswell', state: 'Georgia')
location = OpenStruct.new(city: 'Roswell', state: 'Georgia')

puts "Use .hash method to generate an unique, but variable, hashcode: #{locale.hash}"
puts "A second OS with same key/value pairs yields the same hash in each instance: #{location.hash} 
even though the hashcode itself changes with each run."
puts "Use the .inspect method to generate a string with keys and values: #{locale.inspect}"
puts "Or use .to_s to generate a string with keys and values: #{locale.to_s}"

#### How does one use the intialize_copy method????

## DeepStruct by Andrea Pavoni ###

