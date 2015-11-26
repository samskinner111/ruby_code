require 'pp'  ## pretty print

# a = []

# 1000.times { |n| a << n if n%5 == 0 || n%3 == 0 }
# sum = a.reduce(:+)

# puts sum; puts "The sum is: #{sum}."
# puts

###############  Chapter 2 #############
########################################
# fonts = %w[Courier Helvetica Shelly]
# ## example of for loop.  Notice that font remains defined outside the loop.
	# for font in fonts
	# 	print font + '  '
	# end
	# puts font

# ## an alternative way of writing the same thing, but as an 'each do' loop the internal variable stays internal.
	# fonts.each { |fint| print fint + '  ' }
	# puts
	# puts fint

# ## in an each do loop, the internal variable (fnt) is not recognized outside the loop.
	# fonts.each do |fnt|
	# 	print fnt + '  '
	# end
	# puts fnt


# fonts = { curier: 13, helvetica: 14, times: 8 }

# def load_font (name, size = 12)
#   puts "font #{name} has #{size}"
# end

# load_font (fonts)

###############  Chapter 3 #############
########################################
# Use *names rather than name to avoid needing an array for the author names
	# require 'pp'
	# class Document

	#   attr_accessor :title, :author

	# 	def initialize (title, author)
	# 		@author = author
	# 		@title = title
	# 	end

	# 	def add_authors ( *names )
	# 		@author += "#{names.join(' ')}"
	# 	end
	# end
	
	#   @doc = Document.new("Wind", 'Peter ')
	#   @doc.add_authors('Gone', 'With', 'The', 'Flag' )

	#   puts @doc.title
	#   puts @doc.author
	#   puts


  ## Use of map and inject
	  # def average_word_length words
			# total = words.inject(0.0) { |result, word| word.size + result}
   #    total/words.count
   #  end

	  # words = %w[Mary had A little lamb]
	  # for i in 0..words.size
	  # 	puts words[i]
	  # end

   #  pp words.map { |word| word.size }
   #  pp words.map { |word| word.downcase }

   #  puts average_word_length words


## Some things with hashes, also pp versus puts versus p

	# movie = {title: '2001', genre: 'sci fi', rating: 10}

	# movie.each { |entry| pp entry }
	# movie.each { |key, value| puts "#{key}: #{value}"}

## strip down the syntax:

	# def load_font( specification_hash )
	#   puts specification_hash
	#   p specification_hash
	#   pp specification_hash
	# end

	# #load_font( {:name => 'Times', :size => 12})
	# #load_font(:name => 'Times', :size => 12)
	# #load_font :name => 'Times', :size => 12
	# load_font name: 'Times', size: 12

## Order of Hashes, add a key/value pair, change a value

  # hey_its_ordered = { first: 'mama', second: 'papa', third: 'baby' }

  # hey_its_ordered.each { |entry| pp entry}

  # hey_its_ordered[:fourth] = 'grandma'
  # hey_its_ordered[:first] = 'Mom'
  # puts
  # hey_its_ordered.each { |entry| pp entry}
  # puts

## page 39
  # puts Document.ancestors; puts
  # puts Document.public_methods

###############  Chapter 4: Strings #############
#################################################  

# a_string_with_a_quote = 'Say it ain\'t so!'
# a_string_with_a_backslash = 'This is a backslash: \\'
# double_quoted = "I have a tab \t and a newline: \n"

# puts a_string_with_a_quote
# puts a_string_with_a_backslash
# print double_quoted

# ## Use of a string delimiter

# str = %q! "Stop", she said, "I can't live without 's and "s." !
# puts str

# str1 = %Q< The time is now #{Time.now}. >
# puts str1

# multi_line_string = 'one of two lines 
# and the other of the two'
# puts multi_line_string

# yet_another_multiline = %Q^another multiline string with \
# no new line ^
# puts yet_another_multiline

# heres_one = <<EOF
#   This is the beginning of a very long document.
#   And this is the end of same. (ok, it's short, I lied!)
# EOF
# puts heres_one

###############  Chapter 5: Regular Expressions #############
#############################################################

puts %q{xxxxabdxxexxxxxxxjasfasdxxx}.scan(/(?=xxx)/).length
puts 'xxxabcxxxxxxyxxxxafaf'.scan(/(?=xxx)/).length




###############  Chapter 6: Symbols #############
#################################################



