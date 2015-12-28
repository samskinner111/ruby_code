# Two examples of using catch and throw.  "finish" can be any term.

# catch(:finish) do
# 	1000.times do
# 		x = rand(1000)
# 		throw :finish if x == 123
# 	end

# 	puts "Done!"
# end

# def generate_random_number_except_123
# 	x = rand(1000)
# 	throw :finish if x == 123
# end

# catch(:finish) do
# 	1000.times {generate_random_number_except_123}
# 	puts "Done again!"
# end

# Using ruby debugger: in Terminal "ruby -r debug file.rb"
# commands: step (to next line), list, cont(inue to end), exit
# i=1
# j=0
# until i > 1000000
# 	i *= 2
# 	j += 1
# end
# puts "i = #{i}, j = #{j}"

# Unit Testing with Test::Unit
# class String
# 	def titleize
# 		self.gsub(/(\A|\s)\w/){ |letter| letter.upcase }
# 	end
# end

# require 'test/unit'

# class TestTitlize < Test::Unit::TestCase  #interesting -camelcase!
# 	def test_basic
# 		assert_equal("This Is A Test", "this is a test".titleize)
# 		assert_equal("Another Test 1234", "another test 1234".titleize)
# 		assert_equal("We're Testing", "we're testing".titleize)
# 		assert_equal("'Til Death Do Us Part", "'til death do us part".titleize)
# 		#assert_equal("Let's Make A Test Fail", "foo".titleize) #deliberate failure
# 	end
# end

#Benchmarking & Profiling
# a simple benchmark example
#to Profile run: ruby -r profile file.rb
require 'benchmark'
iterations = 1000000

Benchmark.bmbm do |bm|  #use .bm or .bmbm to run once or twice
	bm.report("for:") do
		for i in 1..iterations do
			x = i
		end
	end

	bm.report("times:") do
		iterations.times do |i|
			x = i
		end
	end
end

