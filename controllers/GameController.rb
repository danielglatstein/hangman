require_relative '../config/environment'
class GameController
  def greeting
   puts "These are the rules of Hangman: \n
   - A word is randomly selected by the computer \n
   - You will choose your action \n
   - enter 'play' to start the game \n
   - next, enter 'guess letter' to guess the word \n
   - If the letter is contained in the word, \n 
     it will be revealed on the board \n
   - If the letter is not contained in the word,\n
     it will fill the body of the Hangman \n
   - It will take 7 guesses to fill the Hangman \n
   - enter 'guess word' to guess the word \n
   - If the word is incorrect, THE GAME IS OVER\n
   - If you guess correctly, you win\n"
  end

  def guess_prompt
   puts "- enter 'guess letter' to guess a letter\n  
         - enter 'guess word' to see the rules"
  end

  def letter_prompt
    puts "enter a letter"
  end
  
  def answer_prompt
    puts "wu tang"
  end

  def invalid_error(type)
   puts "That is not a valid #{type}.  Please pick again."
  end

  def correct_letter
   puts "That is a correct choice!  Choose again."
  end

  def incorrect_letter
   puts "Sorry, that is an incorrect guess.  Please pick again."
  end

  def game_over(word)
   puts "Sorry.  GAME OVER!  The correct word was #{word.join} \nTo play again, please press 'play'. To exit, press 'quit'."
  end

  def win_message
   puts "Congratulations!  You win!  To play again, please press  \n
   'play'. To exit, press 'quit'."
  end
end