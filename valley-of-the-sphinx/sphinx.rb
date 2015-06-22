tally = 0
$score = tally += 0

def score_keep
	if  $score >= 7
		puts "You may pass!"
		puts "You have proven yourself wise among men."
		slow_down
		puts "Your journey has just begun."
		slow_down
		puts "Take this enchantment, use the spell wisely."
		slow_down
		puts "There are nine more sphinx you must face if you are to travel though the valley of the sphinx."
		slow_down
		puts "Pick up the scroll (y|n)"
		action = gets.chomp.downcase
			if action == "y"
				enchantment
				sleep 20
			else 
				puts "Do not be over confident mortal, my kind have had a millenia to devise your demise!"
			end
			walk_one
	elsif
		$score < 7 && $score >= 5
		puts "You have barely escaped my wrath, without help you will surely perish."
		slow_down
		puts "Take this scroll."
		puts "Pick up the scroll (y|n)"
		action = gets.chomp.downcase
			if action == "y"
				enlightenment
			else 
				puts "Your igorance may be the dagger that ends your existence."
			end
			walk_one
	else
		$score < 5
		puts "You lose!"
		death		
	end	
end			
#----Also create the scroll script which reads the positive or negative txt file----#
#---- two txt files one for players with a perfect score, one for players that barely pass----#
def enlightenment
	File.open('scroll_of_education.txt', 'r') do |f1|
		while line = f1.gets
			puts line
		end
	end	
end			

def enchantment
	File.open('scroll_of_enlightenment.txt', 'r') do |f1|
		while line = f1.gets
			puts line
		end
	end	
end			

#----create a method with the script that advances the player to the next sphinx----#
def walk_one
	puts "You walk up the steps of the first temple, past the sphinx."
	slow_down
	puts "At the top, you see nine more pyramid like temples with nine more sphinx statues."
	slow_down
	puts "You walk down the steps toward the next sphinx."
	slow_down
	puts "Once you arrive at the next temple the new sphinx greets you with malice in his voice."
	confront_sphinx_two
end	

#--- method used to add a pause for X amount of seconds ---#

def slow_down
	sleep 3
end	
	

def random_seven_one
riddles = [method(:sphinx_riddles_one), method(:sphinx_riddles_two), method(:sphinx_riddles_three), method(:sphinx_riddles_four), method(:sphinx_riddles_five), method(:sphinx_riddles_six), method(:sphinx_riddles_seven), method(:sphinx_riddles_eight), method(:sphinx_riddles_nine), method(:sphinx_riddles_ten), method(:sphinx_riddles_eleven), method(:sphinx_riddles_twelve), method(:sphinx_riddles_thirteen), method(:sphinx_riddles_fourteen), method(:sphinx_riddles_fifteen), method(:sphinx_riddles_sixteen)].shuffle
puts riddles[0].call
puts riddles[1].call
puts riddles[2].call
puts riddles[3].call
puts riddles[4].call
puts riddles[5].call
puts riddles[6].call
score_keep
end

def confront_sphinx
	while true
	puts "Do you accept the challenge? (yes|no)"

		print ">> "
		answer = gets.chomp.downcase

		if answer == "yes" || answer == "y"
			puts "Lets begin!"
			random_seven_one
		  break 
		elsif 		
			answer == "no" || answer == "n"
			puts "PREPARE TO DIE!"
			death
		  break				
		else
			puts "The sphinx does not understand your language."
		end
	end		
end

def confront_sphinx_two
	puts "You have survived the first sphinx, but do not be decieved."
	slow_down
	puts "We are not created equal, and no mortal has ever made it through the valley and lived to tell the tale."
	slow_down
	puts "You have a choice, defeat me by answering my riddles, or experience oblivion."
	while true
	puts "Do you accept the challenge? (yes|no)"

		print ">> "
		answer = gets.chomp.downcase

		if answer == "yes" || answer == "y"
			puts "Lets begin!"
			random_seven_two
		  break 
		elsif 		
			answer == "no" || answer == "n"
			puts "PREPARE TO DIE!"
			death
		  break				
		else
			puts "I have no tolerance for human jargon."
		end
	end		
end

def death
	puts "The sphinx comes alive."
	puts "His eyes glow red with fire"
	slow_down
	puts "You are instantly engulfed in flames."
	puts "GAME OVER!"
end

#------- level one -----------------#
	def sphinx_riddles_one
		require 'timeout'
		begin
		status = Timeout::timeout(60) {
			puts "What kind of room has no doors or windows?"

			print ">> "
			ridans = gets.chomp.downcase

			if ridans == "a mushroom" || ridans == "mushroom"
				$score = $score + 1
				puts "You are correct"
				
			else
				puts "Incorrect"
			end
			} 
			rescue Timeout::Error
				puts "Your time is up!"
		end		
	end 

def sphinx_riddles_two
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
		puts "The person who makes it, sells it. The person who buys it never uses it and the person who uses it doesnt know they are. What is it?"

		print ">> "
		ridans = gets.chomp.downcase

		if ridans == "a coffin" || ridans == "coffin"
			puts "You are correct"
			$score = $score + 1 
		else
			puts "Incorrect"
		end
		} 
		rescue Timeout::Error
			puts "Your mortal brain moves too slow!"
	end
end	

def sphinx_riddles_three
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
		puts "What is black when you use it, red when you use it, and gray when you throw it away?"	

		print ">> "
		ridans = gets.chomp.downcase

		if ridans == "charcoal" || ridans == "a piece of charcoal"
			puts "You are correct"
			$score = $score + 1 
		else
			puts "Incorrect"
		end
		} 
		rescue Timeout::Error
			puts "Your time is up!"
	end
end		

def sphinx_riddles_four
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What English word has three consecutive double letters?"	

	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "bookkeeper"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "Your time is up!"
	end
end		

def sphinx_riddles_five
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "We hurt without moving. We poison without touching. We bear the truth and the lies. We are not to be judged by our size. What are we?"	

	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "words"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "Your time is up!"
	end
end		


def sphinx_riddles_six
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts """A poor man is sitting in a pub. He sees that the man next to him is extremely rich.
	Poor man: I have an amazing talent; I know almost every song that has ever existed.
	The rich man laughs.
	Poor man: I am willing to bet you all the money you have in your wallet 
	that I can sing a popular song that includes a lady's name of your choosing.
	The rich man laughs again.
	Rich man: OK, how about my daughter's name, Joanna Armstrong-Miller?
	The poor man goes home rich.
	What song did he sing?"""

	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "happy birthday"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Mortals are such stupid creatures."
	end
	} 
	rescue Timeout::Error
			puts "Your time is up!"
	end
end	

def sphinx_riddles_seven
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What grows up and down at the same time?"

	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "a goose" || ridans == "geese"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "Your time is up!"
	end
end		

def sphinx_riddles_eight
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What can one not keep, two hold, and three destroy?"

	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "a secret" || ridans == "secrets"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "Your time is up!"
	end
end	

def sphinx_riddles_nine
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "I can bring tears to your eyes; resurrect the dead, make you smile, and reverse time. I form in an instant but I last a life time. What am I?"

	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "a memory" || ridans == "memory"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "May your last breaths be pleasant and quick!"
	end
end		

def sphinx_riddles_ten
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What is the center of gravity?"
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "v" 
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "Your lack of wisdom will be your demise."
	end
end	

def sphinx_riddles_eleven
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What two things can you never eat for breakfast?"
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "lunch, and dinner" || ridans == "lunch and dinner"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "Your lack of wisdom will be your demise."
	end
end	

def sphinx_riddles_twelve
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What tastes better than it smells?"
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "a tongue" || ridans == "tongue" || ridans == "the tongue"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "May your last breaths be pleasant and quick!"
	end
end	

def sphinx_riddles_thirteen
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "I am invisible, weigh nothing, and if you put me in a barrel, it will become lighter. What am I"
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "hole" || ridans == "a hole"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	 

def sphinx_riddles_fourteen
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "I am not alive, yet I grow; I have no lungs, yet I need air; I have no mouth, yet I can drown. What am I?"
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "fire" || ridans == "a fire"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_fifteen
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What can be swallowed, but can swallow you?"
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "pride" 
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_sixteen
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "The vessel I have thats round in a pair, moist in the middle surrounded by hair and often it happens water flowers there."
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "the eye" || ridans == "eye"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	
#---------------------------------------------------------#

#-------------------------- level two ---------------------#
def random_seven_two
riddles2 = [method(:sphinx_riddles_seventeen), method(:sphinx_riddles_eighteen), method(:sphinx_riddles_nineteen), method(:sphinx_riddles_twenty), method(:sphinx_riddles_twentyone), method(:sphinx_riddles_twentytwo), method(:sphinx_riddles_twentythree), method(:sphinx_riddles_twentyfour), method(:sphinx_riddles_twentyfive), method(:sphinx_riddles_twentysix), method(:sphinx_riddles_twentyseven), method(:sphinx_riddles_twentyeight), method(:sphinx_riddles_twentynine), method(:sphinx_riddles_thirty), method(:sphinx_riddles_thirtyone), method(:sphinx_riddles_thirtytwo)].shuffle
puts riddles2[0].call
puts riddles2[1].call
puts riddles2[2].call
puts riddles2[3].call
puts riddles2[4].call
puts riddles2[5].call
puts riddles2[6].call
#----create score keep two -------#
score_keep_two 
end

def score_keep_two
	if  $score >= 11
		puts "You are a credit to your species. "
		slow_down
		puts "You may pass!"
		slow_down
		puts "Your success was unexpected, but your downfall is eminent."
		puts "In my temple there lies a mystical sword, that can cut through anything."
		puts "Even the rock hard hide of a sphinx."
		puts "Take it as your reward."
		slow_down
		puts "You may not live long enough to enjoy it."
		puts "Pick up the sword (y|n)"
		action = gets.chomp.downcase
			if action == "y"
				#--- create new txt file for method----#
				puts "You pick up the sword and strap it to your back."
				#--- see if you can pass in picture---#
			else 
				puts "To refuse this gift, is to forfeit your life."
			end
	#------- only need code for one item this stage -----------#		
	# elsif
	# 	$score < 7 && $score >= 5
	# 	puts "You have barely escaped my wrath, without help you will surely perish."
	# 	puts "Take this scroll."
	# 	puts "Pick up the scroll (y|n)"
	# 	action = gets.chomp.downcase
	# 		if action == "y"
	# 			#--- create new txt file for method----#
	# 		else 
	# 			puts "Your igorance may be the dagger that ends your existence."
	# 		end
	else
		$score < 10
		puts "You lose!"
		slow_down
		death		
	end
end

def sphinx_riddles_seventeen
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "I wear a red coat and have a stone in my throat. What am I?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "a cherry" || ridans == "cherry" || ridans == "may my words present themselves as the answer you seek!"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_eighteen
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What jumps higher than a building?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "everything" 
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_nineteen
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts """A murderer is condemned to death. 
	He has to choose between three rooms. 
	The first is full of raging fires, the second is full of assassins with loaded guns, 
	and the third is full of lions that haven't eaten in 3 years. Which room is safest for him?"""
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "the third" || ridans == "third" || ridans == "may my words present themselves as the answer you seek!"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twenty
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "How many seconds are in a year?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "12" || ridans == "twelve" 
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twentyone
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What goes up and never comes down?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "your age"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twentytwo
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What starts with an e but only has a single letter in it?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "an envelope" || ridans == "envelope" || ridans == "may my words present themselves as the answer you seek!"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twentythree
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "How many letters are in the alphabet?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "11" || ridans == "eleven"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twentyfour
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "I am the beginning of the end, the end of every place. I am the beginning of eternity, the end of time and space. What am I?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "the letter e" || ridans == "e" || ridans == "may my words present themselves as the answer you seek!"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twentyfive
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "There is a house. One enters it blind and comes out seeing. What is it?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "a school" || ridans == "school"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twentysix
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What goes on four feet in the morning, two feet at noon, and three feet in the evening?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "a man" || ridans == "man"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twentyseven
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "With pointed fangs I sit and wait, with piercing force I serve out fate. Grabbing bloodless victims, proclaiming my might; physically joining with a single bite. What am I?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "a stapler" || ridans == "stapler"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twentyseven
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What is so delicate that even mentioning it breaks it?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "silence" 
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twentyeight
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "I'm heavy but not backwards.
"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "ton" || ridans == "a ton" || ridans == "the word ton"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_twentynine
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "Thirty men and only two women, but they hold the most power.
    Dressed in black and white, they could fight for hours."
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "chess" || ridans == "chess pieces" || ridans == "chess game"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_thirty
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "You walk into a room with a rabbit holding a carrot, a pig eating slop, and a chimp holding a banana. Which animal in the room is the smartest?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "me" || ridans == "I am"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end

def sphinx_riddles_thirtyone
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "No matter the shape I sit in, you'll find me in a row. Although my name has no letters, my initials are MNO. What am I?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "six on the phone keypad" || ridans == "6 on the phone keypad"
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	

def sphinx_riddles_thirtytwo
	require 'timeout'
	begin
	status = Timeout::timeout(60) {
	puts "What is always coming but never arrives?"
	
	print ">> "
	ridans = gets.chomp.downcase

	if ridans == "tomorrow" 
		puts "You are correct"
		$score = $score + 1 
	else
		puts "Incorrect"
	end
	} 
	rescue Timeout::Error
			puts "The fates have decided against you."
	end
end	
#----------------------------------------------------------#
def meet_sphinx
	puts "You are in Eqypt searching for for a rare pyramid."
	slow_down
	puts "You approach a statue of a sphinx that speaks."
	slow_down
	puts "The sphinx tells you in order to continue past him and live, you must answer several riddles."
	slow_down
	puts "If you do not answer correctly, you will anger the sphinx and he will kill you."
	slow_down
	confront_sphinx
end	

meet_sphinx


















