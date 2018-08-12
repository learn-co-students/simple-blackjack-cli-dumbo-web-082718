def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(cardtotal)
 puts "Your cards add up to #{cardtotal}"
  # code #display_card_total here
end

def prompt_user
   puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
   gets.chomp
  # code #get_user_input here
end

def end_game(cards)
  puts "Sorry, you hit #{cards}. Thanks for playing!"
  
  # code #end_game here
end

def initial_round
 card1 = deal_card
 card2 = deal_card
 cardtotal = card1 + card2
 display_card_total(cardtotal)
 cardtotal
end

def hit?(cardtotal)
  prompt_user 
  user_input = get_user_input
  if user_input == 'h'
    cardtotal += deal_card
  elsif user_input == 's'
    cardtotal
  else
    invalid_command
  end
end

def invalid_command
 if get_user_input != 's' && get_user_input != 'h' 
   puts "Please enter valid entry" # code invalid_command here
 end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  thetotal = initial_round
  until thetotal > 21
  thetotal = hit?(thetotal)
  display_card_total(thetotal)
  end
  end_game(thetotal)
end
  # code runner here

    
