class LevelTwo

	def initialize
	tally = 0
	@score = tally += 0	
	end

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
		if  @score >= 8
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
					# third_sphinx_intro	
				else 
					puts "The ancient text has taught us that pride is an ugly sin. Do not be proud adventurer, be wise!"
					# third_sphinx_intro
				end
		elsif
			@score < 8 && @score >= 6 
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
					# third_sphinx_intro
				else 
					puts "Your arrogance endangers your life."
					to_say = "Your arrogance endangers your life."
						`say  #{to_say}`
					# third_sphinx_intro	
				end
		else
			@score < 3
			to_say = "You lose!"
				`say #{to_say}`
			death			
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
end

s = LevelTwo.new
s.second_sphinx_intro


