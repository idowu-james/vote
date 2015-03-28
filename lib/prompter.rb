
['voter','candidate'].each { |chr| require chr  }
class Prompter
  @@candidate_1 = 0;
  @@candidate_2 = 0;
	def initialize
		introduction

		voter = Voter.new
		print "Enter Your First Name: "
		voter.first_name = ""
		while (voter.first_name == "")
			voter.first_name = gets.chomp.capitalize
			break if voter.first_name != "" 
			print "Please Enter a valid Name: "
		end
		
		print "Enter Your Last Name: "
		voter.last_name = gets.chomp.capitalize
		print "Enter Your Address: "
		voter.address = gets.chomp.capitalize
		puts voter.first_name + " " + voter.last_name
		vote_prompt
	end

	def introduction
		puts "\n\t<<<Welcome to the E-voting Platform>>>\n\n"
	end

	def vote_prompt
		print "Do you wish to vote now? (Y / N) "
		reply = gets.chomp
		if (reply == 'y' || reply == 'Y')
			voting
		elsif (reply == 'n' || reply == 'N')
			puts "Thank you. Registration successful. Good bye."
		else
			puts "Please enter Y or N."
			vote_prompt
		end			
	end

	def voting
		candidate = Candidate.new

		puts"**************************************************************"
		puts "please select the number for the candidate you want"
		puts"**************************************************************"

		candidate_list = candidate.candidate_list
		candidate_list.each_with_index { |candidate ,count| puts "Press #{count+1} for #{candidate}" }
		print "> "
			candidate_vote = gets.chomp

			if candidate_vote.to_i == 1
				puts "Thank you for voting for Goodluck"
				@@candidate_1 += 1
			elsif candidate_vote.to_i == 2
				puts "Thank you for voting for buhari"
				@@candidate_2 += 2
			else
				puts "Your vote is invalid"
			end
		vote_again
	end


	def vote_again
		print "Do you wish to vote again? (Y / N) :"
		reply = gets.chomp
		if (reply == 'y' || reply == 'Y')
			voting
		elsif (reply == 'n' || reply == 'N')
			puts""
			puts "Thank you for voting. Good bye."
		else
			puts "Please enter Y or N."
			vote_again
		end							
		vote_tally
	end

	def vote_tally
		
		if @@candidate_1 > @@candidate_2
		    puts "Goodluck is the new president with #{@@candidate_1} votes"
		elsif @@candidate_1 < @@candidate_2
			puts "Buhari is the new president #{@@candidate_2} votes"
		else
		    puts "It was a tie"	
		end					
	end

	
end