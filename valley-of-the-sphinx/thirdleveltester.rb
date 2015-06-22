class LevelThree
	
	def initialize
	tally = 0
	@score = tally += 0	
	end

	def riddle_roll_three_hint
		sphinx_riddles_hint(20)

			[21,22,23].shuffle.each do |num|
			sphinx_riddles(num)
			end
				sphinx_riddles_hint(25)

					[24,26,27].shuffle.each do |num|
					sphinx_riddles(num)
					end

						score_keep_three
	end
		#-method that advances player-#

	def death
		puts "The sphinx eyes glow red with fire."
		slow_down
		puts "The air around you becomes unbearably hot."
		slow_down
		puts "You are instantly engulfed in flames."
		puts "GAME OVER!"
	end	

	def third_sphinx_intro
		puts "As you leave the temple of the second sphinx, you replay the conversation in your mind."
		slow_down
		puts "You are now aware that this is nolonger an ordinary treasure hunt."
		slow_down
		puts "This is a battle for survival."
		slow_down
		puts "But what are the Sphinx protecting?"
		slow_down
		puts "They also seem to know about humans and human history?"
		slow_down
		puts "How if we are now in another dimension?"
		slow_down
		puts "Then you wonder, if they have seen other humans and this place is still unknown "
		slow_down
		puts "How many people have never made it back?"
		third_sphinx
	end	

	def third_sphinx
		puts "As you approach, the third sphinx descends from his temple."
		slow_down
		puts "This Sphinx is slightly larger than the others, and his disdain for your presence is obvious."
		slow_down
		puts "I am always amazed at the leniency of my brothers."
		to_say =  "I am always amazed at the leniency of my brothers."
					`say #{to_say}`
		slow_down
		puts "We owe you humans no debt, we were all slaves, all experiments."
		to_say =  "We owe you humans no debt, we were all slaves, all experiments."
					`say  #{to_say}`
		puts "Some with more purpose than others but none greater than us."
		to_say =  "Some with more purpose than others but none greater than us."
					`say  #{to_say}`
		slow_down
		puts "Do you know why you were even able to stumble upon this place?"
		to_say =  "Do you know why you were even able to stumble upon this place?"
					`say  #{to_say}`
		slow_down
		puts "Why you have always been much smarter than your peers, even your progenitors?"
		to_say =  "Why you have always been much smarter than your peers, even your progenitors?"
					`say  #{to_say}`
		slow_down
		puts "You have no clue who you really are do you?"
		to_say =  "You have no clue who you really are do you?"
					`say  #{to_say}`
		slow_down			
		puts "Suddenly in a blind mix of fear and frustration, you yell out at the Sphinx: "
		slow_down
		puts "THEN TELL ME!"
		slow_down
		puts "The Sphinx who is pacing ten feet away from you in front of the temple smiles showing teeth."
		slow_down
		puts "Now where is the fun in that."
		to_say =  "Now where is the fun in that."
					`say  #{to_say}`			
		slow_down
		puts "All things must be earned on the other side of the looking glass Alice."
		to_say =  "All things must be earned on the other side of the looking glass Alice."
					`say  #{to_say}`
		slow_down
		puts "Your success depends on my defeat."
		to_say =  "Your success depends on my defeat."
					`say  #{to_say}`
		slow_down
		puts "And believe me when I tell you this, mortal"
		to_say =  "And believe me when I tell you this, mortal"
					`say  #{to_say}`
		slow_down
		puts "I will not make this easy!"
		to_say =  "I will not make this easy!"
					`say  #{to_say}`
		puts
		riddle_roll_three_hint
	end	

	def score_keep_three
	#-- changing method from including a scroll--#
	#-- to earning hints via treasure in the sphinx temple--#	
		if  @score >= 5
			puts "You think you have won?"
			to_say = "You think you have won?"
				`say #{to_say}`

			puts "You will never make it out of here."	
			to_say =  "You will never make it out of here."
				`say #{to_say}`	

			puts "Seven more await your arrival" 	
			to_say =  "Seven more await your arrival"
				`say #{to_say}`
				

			puts "Seven more await your failure." 	
			to_say =  "Seven more await your failure."
				`say #{to_say}`

			puts "As you watch the Sphinx slowly shut down, you make a final plee."	
			slow_down
			puts "WHY AM I HERE?"
			slow_down
			puts "Did you not heed the call?" 	
			to_say =  "Did you not heed the call?"
				`say #{to_say}`
				slow_down

			puts "That internal tug that made you proceed without any caution."
			to_say =  "That internal tug that made you proceed without any caution."
				`say #{to_say}`
				

			puts "Everything you want to know, is already encoded in your DNA."	
			to_say =  "Everything you want to know, is already encoded in your DNA."
				`say #{to_say}`
				slow_down

			puts "Your truth lies behind me, in my pyramid, and the others after."	
			to_say =  "Your truth lies behind me, in my pyramid, and the others after."
				`say #{to_say}`
				

			puts "If you can make it, all will be revealed."
			to_say =  "If you can make it, all will be revealed."
				`say #{to_say}`
				slow_down	
			
			puts "The Sphinx words echo in your head."
			slow_down
			puts "You stand there, staring at the temple."
			slow_down
			puts "Coming Soon: The Valley of The Sphinx"
			
		elsif
			@score < 3 && @score >= 2
			puts "Ha ha ha, you will never escape if you continue to perform so mediocore."
			to_say = "Ha ha ha, you will never escape if you continue to perform so mediocore."
				`say #{to_say}`
			
			puts "Seven more await your arrival." 	
			to_say =  "Seven more await your arrival."
					`say #{to_say}`
				slow_down	

			puts "Seven more await your failure." 	
			to_say =  "Seven more await your failure."
				`say #{to_say}`


			puts "Your truth lies behind me, in my pyramid, and the others after."	
			to_say =  "Your truth lies behind me, in my pyramid, and the others after."
				`say #{to_say}`
				slow_down	

			puts "If you can make it, all will be revealed."
			to_say =  "If you can make it, all will be revealed."
				`say #{to_say}`
				slow_down	
			
			puts "The Sphinx words echo in your head."
			slow_down
			puts "You stand there, staring at the temple."
			slow_down
			puts "Coming Soon: The Valley of The Sphinx"
		else
			@score == 1
			to_say = "You lose!"
				`say #{to_say}`
			death			
		end	
	end		

	def slow_down
		sleep 2
	end	

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
			puts
			puts "Would you like to use an item from your backpack? (y|n)"
			print ">> "
			while true
			item = gets.chomp.downcase
				if item == "y"
					begin	
						db = SQLite3::Database.new('questions.sqlite')
						db.results_as_hash = true
						results = db.execute("SELECT * FROM Backpack")
						puts "(0) for #{results[0]['Item']}: " 
						puts "#{results[0]['Item_purpose']}"
						puts
						puts "(1) for #{results[1]['Item']}: " 
						puts "#{results[1]['Item_purpose']}"
					end

					puts
					puts "Choose your item."
					print ">> "
						while true
							choice = gets.chomp.to_i
							if choice == 0 || 1
							begin
								db = SQLite3::Database.new('questions.sqlite')
								db.results_as_hash = true
								results = db.execute("SELECT * FROM nuriddles")
								
								puts "Hint: #{results[num]['Hints']}"
							break
								end
							
							else
								puts "Enter 0 or 1"
							end
						end		
				break
				elsif item == "n"
					#-- add to say --#
					puts "Ha ha ha, your confidence entertains me."
					break
				else 
					puts "Please press 'y' for yes, or 'n' for no."	
				end		 
			end
			
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

	def sphinx_riddles(num)
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

	def sphinx_riddles_three(num)
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
end

	
t = LevelThree.new
t.riddle_roll_three_hint




