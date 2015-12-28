class Square
	def initialize(side_length)
		@@number_of_squares = defined?(@@number_of_squares) ? @@number_of_squares + 1 : 1
		@side_length = side_length
	end

	def self.count
		@@number_of_squares
	end

	def self.test_method
		puts "Hello from the Square Class!"
	end

	def test_method
		puts "hello from an instance of the class Square!"
	end

	def area
		@side_length**2
	end
end

a = Square.new(10)
b = Square.new(5)
c = Square.new(7)
puts Square.count.to_s + " is the number of squares."
puts a.area
puts b.area
puts c.area

Square.test_method
d = Square.new(9)
puts d.area
puts d.test_method
  

