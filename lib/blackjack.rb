def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end
display_card_total(7)


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets 
end

def end_game(card_total)
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
	  initial_round = deal_card+deal_card
	  display_card_total(initial_round)
	  return initial_round
end
	
def hit?(card_total)
	  prompt_user
	  player_input = get_user_input
	    if player_input == "h"
	      card_total += deal_card
	    elsif 
	     player_input == "s"
	      return card_total
     else
	      invalid_command
	    end
	end

def invalid_command
  puts "Please enter valid command"
end

#####################################################
# above code passed all test before coding runner below #
#####################################################

def runner
   limit = 21
   welcome
   initial_round
  card_total= hit?(card_total)
   until card_total > limit
     display_card_total(card_total)
     end 

 end_game
  # code runner here
end
    
