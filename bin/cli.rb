#!/usr/bin/env ruby

require_relative '../config/environment'

# Game.new.call

def create_game
  @game = Game.new
end

def instructions
 puts "Hello.  Welcome to Hangman! Whats the name of action you would like to take?"
 puts "'help' to see the rules"
 puts "'play' to start the game"
end

def rules
 puts "These are the rules of Hangman: \n
 - A word is randomly selected by the computer \n
 - You will choose your action \n
 - 'help' to see the rules\n
 - 'play' to start the game
 - If the letter is contained in the word, \n 
   it will be revealed on the board \n
 - If the letter is not contained in the word,\n
   it will fill the body of the Hangman \n
 - It will take 7 guesses to fill the Hangman \n
 - At any time, you can guess the word \n
 - If the word is incorrect, THE GAME IS OVER\n
 - If you guess correctly, you win\n
  Please choose a letter or guess a word.  If you want \n
  to see the rules, press 'help'.\n"
end

def guess_prompt
 puts "Please choose a letter or guess a word.  If you want \n
       to see the rules, press 'help'."
input = gets.chomp 
end

def invalid_error
 puts "That is not a valid letter.  Please pick again."
 input = gets.chomp
 if input == "help"
  rules
else
  input
 end
end

def correct_letter
 "That is a correct choice!  Choose again."
 input = gets.chomp
end

def incorrect_letter
 "Sorry, that is an incorrect guess.  Please pick again."
 input = gets.chomp
end

def game_over(word)
 puts "Sorry.  GAME OVER!  The correct word was #{word.join} \nTo play again, please press 'play'. To exit, press 'exit'."
end

def win_message
 puts "Congratulations!  You win!  To play again, please press  \n
 'play'. To exit, press 'exit'."
end



# def user_input
#   input = gets.chomp
# end

x = nil

while x != quit
  greeting
  resource = gets.chomp

  case resource.downcase
  when 'play'
      game = GameController.new
      word = game.word
    game.rules
    action = gets.chomp
    if action == 'guess letter'
      game.guess_prompt
      guess = gets.chomp
        if !game.valid(guess)
          game.invalid_error   
        elsif game.loss
          game.game_over(word)
        else
          game.round(guess)
        end
    if action == 'guess answer'
      game.answer_prompt
      guess = gets.chomp
        if guess == word.join
          game.win_message
        else game.loss
          game.game_over(word)
        end
  when 'help'
    game.rules
  end
 end
 