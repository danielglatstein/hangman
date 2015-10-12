def greeting
  puts "Hello.  Welcome to Hangman!"
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
  - If you guess correctly, you win"
end

def ask_for_input
  puts "Please choose a letter or guess a word.  If you want \n
        to see the rules, press 'help'."
  input = gets.chomp
end

def invalid_error
  puts "That is not a valid letter.  Please pick again."
  input = gets.chomp
end

def correct_letter
  "That is a correct choice!  Choose again."
  input = gets.chomp
end

def incorrect_letter
  "Sorry, that is an incorrect guess.  Please pick again."
  input = gets.chomp
end

def game_over
  "Sorry.  GAME OVER!  The correct word was #{} \n
  To play again, please press 'play'. To exit, press 'exit'."
  input = gets.chomp
end

def win_message
  "Congratulations!  You win!  To play again, please press  \n
  'play'. To exit, press 'exit'."
end


def order_of_operations
  greeting
  rules
  #show board
  ask_for_input
  # while !game.loss 
  #user picks letter
    #if 'help'
      rules
    #if invalid game.!valid?(input)
      invalid_error
    ask_for_input
    #if valid
    # if letter correct game.correct(input)
    #   put in board game.reveal(input)
      correct_letter
      ask_for_input
    # if not correct 
    #   put in wrong words
      incorrect_letter
    #show board
    # if game.win == true
      win_message
    # while !game.loss is not true
      game_over
      greeting
    # else
      ask_for_input
end

