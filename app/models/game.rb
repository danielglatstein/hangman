require_relative '../../config/environment.rb'

class Game
  attr_reader :board
  
  def initialize
    @board = Board.new
    game_loop
  end

  def wrong_guess(letter)
    if valid(letter) && !board.word.include?(letter)
      letters.wrong << letter
    end
    puts letters.wrong
  end

  def accept(letter)
    #this method takes the selected letter and adds it to the hangman
    if valid(letter) && board.word.include?(letter)
      reveal(letter)
    end
  end

  def round(letter)
    if accept(letter)
      print accept(letter)
    else
      wrong_guess(letter)
    end
  end

  def game_status(response)
    if @player.lost?
      @board.flash "Sorry, you lose! The answer was #{@board.phrase.show.upcase}"
      return play_again?
    elsif @player.won?
      @board.flash "You win! Awesome!"
      return play_again?
    else
      return true
    end
  end


  def reveal(letter)
    
  end

  def valid(letter)
    if letter.length == 1 && !letters.wrong.include?(letter) #&& !letters.correct.include?(letter) 
      return true
    else
      return false
    end
  end

  def win
    board.blanks == word
  end

  def pick_letter
    puts "What letter would you like to guess?"
    puts board.blanks
    return gets.chomp.upcase
  end

  def check_letter(letter)
    if !valid?
      puts "invalid"
      return false
    end

    if player.guess?(letter)
      return "Correct"
    else
      return "wrong"
    end
  end

  def game_loop
    status = true
    while (status)
      letter = pick_letter
      response = check_letter(letter)
      status = game_status(response)
    end
  end

  def loss
    letters.wrong.length == 6
  end
end

