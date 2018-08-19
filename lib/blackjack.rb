def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
 card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game (total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  init_cards = deal_card + deal_card
  puts "Your cards add up to #{init_cards}"
  init_cards
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == "s"
    new = 0
    num
  elsif input == "h"
    new = deal_card
    new + num
  end
  return new + num
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  
  var = hit?(deal_card)

  while var < 21 do
    var += deal_card
    display_card_total(var)
  end
  end_game(var)
end
    
