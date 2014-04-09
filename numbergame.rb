print "Welcome to the number guessing game. Here are some advises before you play.
 1. Try to guess bewteen number 1 to 10 since that's where the amswer will be.
 2. You only have four chances to guess. Use them wisely. 
 3. If you want to keep playing, enter letter y when prompted, or enter any other key to quit the game. \n"

continue = "y"
while continue == "y"
		answer = rand(1..10)
		print "\n Please enter your guess between number 1 to 10: "
		guess = gets.to_i 
		chance = 3
		until guess == answer || chance == 0		
			if !guess.between?(1,10)
			    warning = "BAD GUESS. Must between 1 to 10"
			elsif guess > answer
			    warning = "TOO HIGH"
			else guess < answer
			    warning = "TOO LOW" 
			end
		    print "#{warning}. Remaining #{chance == 1 ? "chance" : "chances"}: #{chance}. Please try again: "
		    chance -= 1
		    guess = gets.to_i    
		end

		if guess == answer # && chance == 0
			# print "That was closed. Yes, the correct answer is #{answer}"
		# elsif guess == answer
			print "CONGRAT! #{answer} is the answer"
		else
			print "Sorry. Chances up. Better luck next time."
		end

	print "\n Would you like to continue? (enter y to continue or anyother keys to quit)"
	continue = gets.chomp
end



