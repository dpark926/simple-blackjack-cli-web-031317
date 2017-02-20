def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  sum = first_card + second_card

  display_card_total(sum)
  return sum
end

def hit?(current_card_total)
  prompt_user
  answer = get_user_input

  if answer == "h"
    third_card = deal_card
    # puts "You hit #{third_card}"
    new_sum = third_card + current_card_total
#     display_card_total(new_sum)
    return new_sum
  elsif answer == "s"
#   	display_card_total(current_card_total)
    return current_card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round #returns sum
  new_sum = hit?(sum)
  display_card_total(new_sum)

#   until sum > 21
#     sum += hit?(sum)
#     display_card_total(sum)
#   end

  until new_sum > 21
   	new_sum = hit?(new_sum)
  	display_card_total(new_sum)
  end

#   if sum < 21
#   	sum = hit?(sum)
#   	display_card_total(sum)
#   end

  end_game(new_sum) # "Sorry, you hit #{card_total}. Thanks for playing!"
end
