

class DemoGame
	tally = 0
	@@score = tally += 0	

	def slow_down
		sleep 2
	end	

	def death
		puts "The sphinx eyes glow red with fire."
		slow_down
		puts "The air around you becomes unbearably hot."
		slow_down
		puts "You are instantly engulfed in flames."
		puts "GAME OVER!"
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
		if  @@score >= 25
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
			@@score < 23 && @@score >= 22
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
			@@score <= 21
			to_say = "You lose!"
				`say #{to_say}`
			death			
		end	
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
				@@score = @@score + 1 
			else
				puts "Incorrect"
			end
			} 
			rescue Timeout::Error
				puts "Your time is up!"	
		end
	end	


	def riddle_roll_two
	[10,11,12,13,14,15,16,17,18,19].shuffle.each do |num|
		sphinx_riddles(num)
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
		puts "I only ask because you walked out the corridor, with the look of an adventurer"
		to_say =  "I only ask because you walked out the corridor, with the look of an adventurer"
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
		puts "I remember when we served your masters."
		to_say =  "I remember when we served your masters."
					`say  #{to_say}`			

		slow_down
		puts "If you defeat me, I will tell you what you need to know."
		to_say =  "If you defeat me, I will tell you what you need to know."
					`say  #{to_say}`
		slow_down
		puts "But first, you must answer my riddles."
		to_say =  "But first, you must answer my riddles."
					`say  #{to_say}`
		puts
		riddle_roll_two
	end				

	def score_keep_two
	#-- changing method from including a scroll--#
	#-- to earning hints via treasure in the sphinx temple--#	
		if  @@score >= 18
			puts "You may pass!"
			to_say = "You may pass!"
				`say  #{to_say}`

			puts "Your intelect is far more superior than I expected."	
			to_say =  "Your intelect is far more superior than I expected."
				`say  #{to_say}`

			puts "It seems some how you have awakened your dormant self."	
			to_say =  "It seems some how you have awakened your dormant self."
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

			puts "Your only means of escape is to defeat the remaining sphinx."
			to_say =  "Your only means of escape is to defeat the remaining sphinx."
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
					selector_two
					third_sphinx_intro	
				else 
					puts "The ancient text has taught us that pride is an ugly sin. Do not be proud adventurer, be wise!"
					third_sphinx_intro
				end
		elsif
			@@score < 18 && @@score >= 16 
			puts "I am tempted to end your suffering adventurer."
			to_say = "I am tempted to end your suffering adventurer."
				`say  #{to_say}`
			puts "With a performance like that you will never make it through the valley."
			to_say = "With a performance like that you will never make it through the valley."
				`say  #{to_say}`
			puts "Take this scroll."
			to_say = "Take this scroll."
				`say  #{to_say}`
			puts "Pick up the scroll (y|n)"
			action = gets.chomp.downcase
				if action == "y"
					#-- use this scroll to describe the possibility of collecting treasure in the temple --#
					#-- inorder to gain hints to riddles --#
					#-- create a method for the above, place it here --#
					info_on_sphinx
					third_sphinx_intro
				else 
					puts "Your arrogance endangers your life."
					to_say = "Your arrogance endangers your life."
						`say  #{to_say}`
					third_sphinx_intro	
				end
		else
			@@score < 13
			to_say = "You lose!"
				`say #{to_say}`
			death			
		end	
	end	


	def selector_two
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
			print ">> "

			bag = gets.chomp
			if bag == "y"

				begin
					db = SQLite3::Database.open "questions.sqlite"
					db.execute "CREATE TABLE IF NOT EXISTS Backpack(Id INTEGER PRIMARY KEY, Item TEXT, Item_purpose TEXT)"
					db.execute "INSERT INTO Backpack VALUES(2,'#{results[x]['item_name']}', '#{results[x]['item_purpose']}')"
				rescue SQLite3::Exception => e 
					puts "Exeption occurred"
					puts e 

				ensure db.close if db	
				end	
			else 
				bag == "n"
				puts "Next time reconsider, these items may prolong your life."
			end		
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
				@@score = @@score + 1 
			else
				puts "Incorrect"
			end
			} 
			rescue Timeout::Error
				puts "Your time is up!"	
		end
	end	


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
			print ">> "

			bag = gets.chomp
			if bag == "y"

				begin
					db = SQLite3::Database.open "questions.sqlite"
					db.execute "CREATE TABLE IF NOT EXISTS Backpack(Id INTEGER PRIMARY KEY, Item TEXT, Item_purpose TEXT)"
					db.execute "INSERT INTO Backpack VALUES(1,'#{results[x]['item_name']}', '#{results[x]['item_purpose']}')"
				rescue SQLite3::Exception => e 
					puts "Exeption occurred"
					puts e 

				ensure db.close if db	
				end	
			else 
				bag == "n"
				puts "Next time reconsider, these items may prolong your life."
			end		
		end	
	end	

	def score_keep
	#-- changing method from including a scroll--#
	#-- to earning hints via treasure in the sphinx temple--#	
		if  @@score >= 9
			puts "You may pass!"
			to_say = "You may pass!"
				`say  #{to_say}`

			puts "You have proven yourself wise among men."	
			to_say =  "You have proven yourself wise among men."
				`say  #{to_say}`

			puts "Your journey has just begun." 	
			to_say =  "Your journey has just begun."
					`say  #{to_say}`
				slow_down	

			puts "As you pass through my temple collect what treasures you can carry." 	
			to_say =  "As you pass through my temple collect what treasures you can carry."
				`say  #{to_say}`

			puts "Use them to pay tribute to the sphinx." 	
			to_say =  "Use them to pay tribute to the sphinx."
				`say  #{to_say}`
				slow_down

			puts "Certain jewels and magical items can be used to save your life or bribe the sphinx for a hint to their riddle."
			to_say =  "Certain jewels and magical items can be used to save your life or bribe the sphinx for a hint to their riddle."
				`say  #{to_say}`
				slow_down

			puts "There are nine more you must face if you are to travel through the valley of the sphinx."	
			to_say =  "There are nine more you must face if you are to travel through the valley of the sphinx."
				`say  #{to_say}`
				slow_down

			to_say = "Do you want to search the temple?"
			puts "Search the temple (y|n)"
			print ">> "

			action = gets.chomp.downcase
				if action == "y"
					puts "searching ......."
					sleep 6
					enchantment
					sleep 6
					selector
					second_sphinx_intro							
				else 
					puts "Do not be over confident mortal, my kind have had a millenia to devise your demise!"
					slow_down
					second_sphinx_intro
				end
		elsif
			@@score < 8 && @@score >=6 
			puts "You have barely escaped my wrath, without help you will surely perish."
			puts "Take this scroll."
			puts "Pick up the scroll (y|n)"
			action = gets.chomp.downcase
				if action == "y"
					#-- use this scroll to describe the possibility of collecting treasure in the temple --#
					#-- inorder to gain hints to riddles --#
					enlightenment
					sleep 8
					second_sphinx_intro
				else 
					puts "Your ignorance may be the dagger that ends your existence."
					slow_down
					second_sphinx_intro
				end
		else
			@@score < 3
			to_say = "You lose!"
				`say #{to_say}`
			death			
		end	
	end	


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

	def riddle_roll
	[1,2,3,4,5,6,7,8,9,10].shuffle.each do |num|
		sphinx_riddles(num)
		end
		score_keep
	end	


	def meet_sphinx
		puts "You are in Eqypt searching for a rare pyramid."
		slow_down
		puts "You approach a statue of a sphinx that speaks."
		slow_down
		puts "The sphinx tells you in order to continue past him and live, you must answer several riddles."
		slow_down
		puts "If you do not answer correctly, you will anger the sphinx and he will kill you."
		slow_down
		puts "You will have 60 seconds for each riddle."
		slow_down
		while true
		puts "Do you accept the challenge? (y|n)"

			print ">> "
			answer = gets.chomp.downcase

			if answer == "yes" || answer == "y"
				puts "Lets begin!"
				riddle_roll
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
end

g = DemoGame.new
g.meet_sphinx

