require 'pry'

def welcome
  # code #welcome here
  
  puts "Welcome to the Blackjack Table"
end


def deal_card
  # code #deal_card here
  
  number = rand(1..11)
  number
end


def display_card_total(num)
  # code #display_card_total here
  
  puts "Your cards add up to #{num}"
end


def prompt_user
  # code #prompt_user here
  
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  # code #get_user_input here
  
  gets.chomp
end


def end_game(num)
  # code #end_game here
  
  puts "Sorry, you hit #{num}. Thanks for playing!"
end


def initial_round
  # code #initial_round here
  
  num1 = deal_card
  num2 = deal_card
  sum = num1 + num2
  
  display_card_total(sum)
  sum
end


def hit?(num)
  # code hit? here
  
  while true do
    prompt_user
    input = get_user_input

    if input == "h"
      return num + deal_card
    elsif input == "s"
      return num
    else 
      invalid_command 
    end
  end
end


def invalid_command
  # code invalid_command here
  
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  # code runner here
  
  welcome
  num = initial_round

  until num >= 21
      total = hit?(num)
      if total == num
        puts "Thanks for staying. Your number is #{total}. Exiting now!"
        return
      end
      num = total
      display_card_total(num)
  end
  end_game(num)
end
