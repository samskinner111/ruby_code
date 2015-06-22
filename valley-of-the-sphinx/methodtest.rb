# questions = CSV.read('qandasphinx.csv', headers:true)


# questions.each do |quest_row|
# 	p quest_row 
# end


	# question_numbers = [0,1,2,3,4,5,6,]
	# question_array = question_numbers.shuffle
	# nums = question_array.pop 
	# num = nums

	# question_numbers = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].shuffle



# [0,1,2,3,4,5,6,].shuffle.each {|i| puts i}

# def count
# 	number = []
# 	(60..70) << numbers


	
# def mixer
# 			mixem = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].shuffle
# 			mixem2 = mixem.uniq.pop(7)
# 			mixem3 = mixem2
# 			@newnums = Array[]
# 			@newnums << mixem3
# 			puts @newnums
# 	end


# class RiddleRoll
# 	def initialize
# 	end

# 	def mixer
# 			mixem = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].shuffle
# 			mixem2 = mixem.uniq.pop
# 			num = mixem2
# 			puts sphinx_riddles(num)	
# 	end

# 		def the_riddles
# 				@newnums.each do |num|
# 				sphinx_riddles(num)
# 				end	
# 		end		



def sphinx_riddles_hint(num)
	require 'timeout'
	require 'rubygems'
	require 'sqlite3'
	begin	
	status = Timeout::timeout(120) {
		db = SQLite3::Database.new('questions.sqlite')
		db.results_as_hash = true
		results = db.execute("SELECT * FROM nuriddles")

		puts "#{results[num]['Riddles']}"
		puts "Would you like to use an item from your backpack? (y|n)"
		print ">> "
		while
		item = gets.chomp.downcase
			if item == "y"
				begin	
				db = SQLite3::Database.new('questions.sqlite')
				db.results_as_hash = true
				results = db.execute("SELECT * FROM Backpack")
				puts "Press 0 for #{results[0]['Item']}: " 
				print "#{results[0]['Item_purpose']}"
				puts
				puts "Press 1 for #{results[1]['Item']}: " 
				print "#{results[1]['Item_purpose']}"

				puts
				puts "Choose your item."
				print ">> "
					choose = gets.chomp.to_i
					if choose == 0 || 1
						puts "#{results[num]['Hints']}"
					else
						#-- method unfinished --#
					end	
				break
			elsif item == "n"
				#-- next question function --#
				break
			else 
				puts "Please press 'y' for yes, or 'n' for no."	
			end		 
		end
		
		ridans = gets.chomp.downcase
		if ridans == "#{results[num]['Answer1']}" || ridans == "#{results[num]['Answer2']}"
			puts "You are correct"
			@score = @score + 1 
		else
			puts "Incorrect"
		end
		} 
		rescue Timeout::Error
			puts "Your time is up!"	
	end
end	


def riddle_roll_three_hint
	sphinx_riddles_hint(20)
	end
	#-method that advances player-#
end	


def riddle_roll_three
[21,22,23,24].shuffle.each do |num|
	sphinx_riddles(num)
	end
	#-method that advances player-#
end	

def riddle_roll_three_hint_two
	sphinx_riddles_hint(25)
	#-method that advances player-#
end	

def riddle_roll_three_second
[26,27,28,29].shuffle.each do |num|
	sphinx_riddles(num)
	end
	#-method that advances player-#
end	

#-------------------------- level 3 ------------------------------#

def selector
	require 'rubygems'
	require 'sqlite3'
	begin	
		db = SQLite3::Database.new('questions.sqlite')
		db.results_as_hash = true
		results = db.execute("SELECT * FROM Items")

		puts "Please select an artifact:"
		print ">> "

		x = gets.chomp.to_i
			puts "You grabbed #{results[x]['item_name']} from the temple" 
			puts "#{results[x]['item_purpose']}"

		puts "Place item in backpack? (y|n)"

		bag = gets.chomp
		if bag == "y"

			f = File.open('backpack.txt', 'a+')
			f.puts "#{results[x]['item_name']}"

			f.close
		else 
			bag == "n"
			puts "Next time reconsider, these items may prolong your life."
		end		
	end	
end	

	
# while true
	# 	if newnums.count >= 0
	# 		puts newnums
	# 	break	
	# 	else newnums.count > 8
	# 	break	
	# 	end
	# end	

# def riddle_roll
# (0..6).each do |num|
# 	sphinx_riddles(num)
# 	end
# 		score_keep
# end	

# def riddler2
# num = rand(6..14)
# 	sphinx_riddles(num)
# end	



# def repeater
# 	riddler2
# 	riddler2
# 	riddler2
# 	riddler
# 	riddler
# 	riddler
# 	riddler
# end	

# File.open("backpack.txt", "a+") do |file|
# 	file.write "List of items collected."
# end

# puts "Please enter text for this test"

# line = gets.chomp

# File.open("backpack.txt", 'a+').each do |line|
# 	puts "#{line}\n"
# end



def storage
	f = File.open('backpack.txt', 'a+')
	f.puts "List of items"
	f.puts "-" * 25
	f.close

	puts "Please enter data for file."

	data = gets.chomp

	f = File.open('backpack.txt', 'a+')
	f.puts "#{data}"

	f.close
end

			# def sphinx_riddles_two(num)
			# 	require 'timeout'
			# 	require 'csv'
			# 	begin	
			# 	status = Timeout::timeout(60) {
			# 		questions = CSV.read('qandasphinx2.csv', headers:true)
			# 			puts questions['Riddles'][num]
			# 			print ">> "
			# 			ridans = gets.chomp.downcase

			# 			if ridans == questions['Answer1'][num] || ridans == questions['Answer2'][num]
			# 					puts "You are correct"
			# 				@score = @score + 1 
			# 			else
			# 				puts "Incorrect"
			# 			end
			# 			} 
			# 			rescue Timeout::Error
			# 				puts "Your time is up!"		
			# 	end
			# end	
		
def slow_down
	sleep 2
end				


tally = 0
@score = tally += 0

def sphinx_riddles_two(num)
	require 'timeout'
	require 'rubygems'
	require 'sqlite3'
	begin	
	status = Timeout::timeout(60) {
		db = SQLite3::Database.new('questions.sqlite')
		db.results_as_hash = true
		results = db.execute("SELECT * FROM nuriddles")

		puts "#{results[num]['Riddles']}"
		print ">> "
		
		ridans = gets.chomp.downcase
		if ridans == "#{results[num]['Answer1']}" || ridans == "#{results[num]['Answer2']}"
			puts "You are correct"
			@score = @score + 1 
		else
			puts "Incorrect"
		end
		} 
		rescue Timeout::Error
			puts "Your time is up!"	
	end
end	



def riddle_roll_two
[5,6,7,8,9,10,11,12,13,14 ].shuffle.each do |num|
	sphinx_riddles_two(num)
	end
	score_keep_two
end	

def info_on_sphinx
	File.open('scroll_of_survival.txt', 'r') do |f1|
		while line = f1.gets
			puts line
		end
	end	
end		

def new_items
	File.open('temple_contents2.txt', 'r') do |f1|
		while line = f1.gets
			puts line
		end
	end	
end		


def second_sphinx_intro
	#--- insert cmds for next level ---#
	puts "The sphinx lays at the front entrance powerless and defeated."
	slow_down
	puts "After you close your backpack you walk towards the back of the pyramid."
	slow_down
	puts "The back of the pyramid opens up to a place that seemed unreal."
	slow_down
	puts "Nine more pyramids each guarded by a different sphinx."
	slow_down
	puts "You walk through the corridor."
	slow_down
	puts "Down the steps."
	slow_down
	puts "To the next pyramid"
	slow_down
	puts "Mentally preparing yourself for the next sphinx."
	second_sphinx
end	

def second_sphinx
	#-- insert cmds ---#
	puts "As you approach, the second sphinx speaks:"
	slow_down
	puts
	puts "Do you know where you are son of Adam?"
	to_say =  "Do you know where you are son of Adam?"
				`say  #{to_say}`
	slow_down
	puts "I only ask because you walked through the corridor, with the look of an adventurer"
	to_say =  "I only ask because you walked through the corridor, with the look of an adventurer"
				`say  #{to_say}`
	puts "instead of a man stuck in bitter combat for his life."
	to_say =  "instead of a man stuck in bitter combat for his life."
				`say  #{to_say}`
	slow_down
	puts "Do not be alarmed."
	to_say =  "Do not be alarmed."
				`say  #{to_say}`
	slow_down
	puts "I will show you mercy."
	to_say =  "I will show you mercy."
				`say  #{to_say}`
	slow_down
	puts "I am not like the other sphinx."
	to_say =  "I am not like the other sphinx."
				`say  #{to_say}`
	slow_down
	puts "If you best me, I will tell you what you need to know."
	to_say =  "If you best me, I will tell you what you need to know."
				`say  #{to_say}`
	slow_down
	puts "But first, you must answer my riddles."
	to_say =  "But first, you must answer my riddles."
				`say  #{to_say}`
	riddle_roll_two
end	

def score_keep_two
#-- changing method from including a scroll--#
#-- to earning hints via treasure in the sphinx temple--#	
	if  @score >= 8
		puts "You may pass!"
		to_say = "You may pass!"
			`say  #{to_say}`

		puts "Your intelect is far more superior than I expected."	
		to_say =  "Your intelect is far more superior than I expected."
			`say  #{to_say}`

		puts "But this is not a victory." 	
		to_say =  "But this is not a victory."
				`say  #{to_say}`
			slow_down	

		puts "The moment you left the first temple," 	
		to_say =  "The moment you left the first temple,"
			`say  #{to_say}`

		puts "you cossed over into our dimension." 	
		to_say =  "you crossed over into our dimension."
			`say  #{to_say}`
			slow_down

		puts "Your only means of return is to defeat the remaining sphinx."
		to_say =  "Your only means of return is to defeat the remaining sphinx."
			`say  #{to_say}`
			slow_down

		puts "Be strategic in the items you select from each temple."	
		to_say =  "Be strategic in the items you select from each temple."
			`say  #{to_say}`
			slow_down

		puts "You will need more than one weapon to make it back to your realm."	
		to_say =  "You will need more than one weapon to make it back to your realm."
			`say  #{to_say}`
			slow_down	

		to_say = "Do you want to search the temple?"
		puts "Search the temple (y|n)"
		print ">> "

		action = gets.chomp.downcase
			if action == "y"
				puts "searching ......."
				sleep 6
				new_items
				sleep 6
				selector							
			else 
				puts "The ancient text has taught us that pride is an ugly sin. Do not be proud adventurer, be wise!"
			end
	elsif
		@score < 8 && @score >= 6 
		puts "I'm tempted to end your suffering adventurer."
		puts "With a performance like that you will never make it through the valley."
		puts "Take this scroll."
		puts "Pick up the scroll (y|n)"
		action = gets.chomp.downcase
			if action == "y"
				#-- use this scroll to describe the possibility of collecting treasure in the temple --#
				#-- inorder to gain hints to riddles --#
				#-- create a method for the above, place it here --#
				info_on_sphinx
			else 
				puts "Your arrogance endangers your life."
			end
	else
		@score < 3
		to_say = "You lose!"
			`say #{to_say}`		
	end	
end	















