

def riddle_roll_three_hint
	sphinx_riddles_hint(20)
	#-method that advances player-#
end	

tally = 0
@score = tally += 0

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
					# puts "(1) for #{results[1]['Item']}: " 
					# puts "#{results[1]['Item_purpose']}"
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

riddle_roll_three_hint