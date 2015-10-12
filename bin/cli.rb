#!/usr/bin/env ruby

require_relative '../config/environment'

# Game.new.call
class RunProgram

  attr_accessor :game

  def greeting
   puts "Hello.  Welcome to Hangman!\n"
  end

  def rules
   puts "These are the rules of Hangman: \n
   - A word is randomly selected by the computer \n
   - You will guess a letter \n
   - If the letter is contained in the word, \n 
     it will be revealed on the board \n
   - If the letter is not contained in the word,\n
     it will fill the body of the Hangman \n
   - It will take 7 guesses to fill the Hangman \n
   - At any time, you can guess the word \n
   - If the word is incorrect, THE GAME IS OVER\n
   - If you guess correctly, you win\n\n\n"
    # Please choose a letter or guess a word.  If you want \n
    # to see the rules, press 'help'.\n
  end

  def ask_for_input
   puts "Please choose a letter or guess a word.  If you want \n
         to see the rules, press 'help'. \n\n"
  end

  def invalid_error
   puts "That is not a valid letter.\n\n"
   ask_for_input
  end

  def correct_letter
   "That is a correct choice!  Choose again.\n\n"
   input = gets.chomp
  end

  def incorrect_letter
   "Sorry, that is an incorrect guess.  Please pick again.\n\n"
   input = gets.chomp
  end

  def game_over
   puts "\n\n Sorry.  GAME OVER!  The correct word was #{Game.word.join}.\n To play again, please press 'play'. To exit, press 'exit'. \n\n"
   input = gets.chomp
  end

  def win_message
   puts "\n\n Congratulations!  You win!  To play again, please press  \n
   'play'. To exit, press 'exit'. \n\n"
  end

  def exit
    puts "Game Over"
  end

  def order_of_operations
  greeting
  rules
  exit = true
    while exit
    @game = Game.new
    print "#{game.blanks} \n"
      while exit
      puts "\n"
      input = gets.chomp
        if input == 'help'
          rules
          ask_for_input
          print "#{game.blanks} \n"
        elsif input == 'exit'
          exit = false
        elsif input == 'play'
          ask_for_input
          break
          print "#{game.blanks} \n"
        elsif input == game.word.join
          win_message
        elsif !game.valid(input)
          invalid_error
          game.round(input)
        elsif game.valid(input)
          game.round(input)
          while game.win
            win_message
            break
          end
          while game.loss 
            puts "Sorry.  GAME OVER!  The correct word was #{game.word.join}\n
            To play again, please press 'play'. To exit, press 'exit'."
            break
          end
        end 
      end
    end
  end
end

RunProgram.new.order_of_operations