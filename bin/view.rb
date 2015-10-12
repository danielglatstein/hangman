require_relative '../config/environment'

class View

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
   puts "\n\n Sorry.  GAME OVER!  The correct word was #{Game.word.join} \n 
  To play again, please press 'play'. To exit, press 'exit'. \n\n"
   input = gets.chomp
  end
end