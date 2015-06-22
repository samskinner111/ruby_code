
question_numbers = [0,1,2,3,4,5,6,]
question_array = question_numbers.shuffle
print question_array 
puts
num = question_array.pop
print question_array
puts 
puts num 



# tally = 0
# $score = tally += 0

# @riddle_array = [[0, 'What kind of room has no doors or windows?', "a mushroom", "mushroom"],
# 					 		[1, "The person who makes it, sells it. The person who buys it never uses it and the person who uses it doesnt know they are. What is it?", "a coffin", "coffin"], 
# 					 				[2, "What is black when you use it, red when you use it, and gray when you throw it away?", "charcoal", "a piece of charcoal"], 
# 					 						[3, "What English word has three consecutive double letters?", "bookkeeper"], 
# 					 								[4, "We hurt without moving. We poison without touching. We bear the truth and the lies. We are not to be judged by our size. What are we?", "words"]].shuffle
# 	def sphinx_riddles(num)
# 		require 'timeout'
# 		begin
# 		status = Timeout::timeout(60) {
# 			puts @riddle_array[num][1]

# 			print ">> "
# 			ridans = gets.chomp.downcase

# 			if ridans == @riddle_array[num][2] || ridans == @riddle_array[num][3]
# 				puts "You are correct"
# 				$score = $score + 1 
# 			else
# 				puts "Incorrect"
# 			end
# 			} 
# 			rescue Timeout::Error
# 				puts "Your time is up!"
# 		end		
# 	end 


# def score_keep
# 	if  $score >= 5
# 		puts "You may pass!"
# 		puts "You have proven yourself wise among men."
# 		puts "Your journey has just begun."
# 		puts "Take this enchantment, use the spell wisely."
# 		puts "There are nine more sphinx you must face if you are to travel though the valley of the sphinx."
# 		puts "Pick up the scroll (y|n)"
# 		action = gets.chomp.downcase
# 			if action == "y"
# 				enchantment
# 				sleep 10
# 			else 
# 				puts "Do not be over confident mortal, my kind have had a millenia to devise your demise!"
# 			end
# 	elsif
# 		$score < 5 && $score >= 3
# 		puts "You have barely escaped my wrath, without help you will surely perish."
# 		puts "Take this scroll."
# 		puts "Pick up the scroll (y|n)"
# 		action = gets.chomp.downcase
# 			if action == "y"
# 				enlightenment
# 			else 
# 				puts "Your igorance may be the dagger that ends your existence."
# 			end
# 	else
# 		$score < 3
# 		puts "You lose!"		
# 	end	
# end			
# #----Also create the scroll script which reads the positive or negative txt file----#
# #---- two txt files one for players with a perfect score, one for players that barely pass----#
# def enlightenment
# 	File.open('scroll_of_education.txt', 'r') do |f1|
# 		while line = f1.gets
# 			puts line
# 		end
# 	end	
# end	

# def enchantment
# 	File.open('scroll_of_enlightenment.txt', 'r') do |f1|
# 		while line = f1.gets
# 			puts line
# 		end
# 	end	
# end		


# (0..4).each do |num|
# 	sphinx_riddles(num)
# end	

# score_keep			