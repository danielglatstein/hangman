require 'pry'
class Player

  attr_accessor :guesses, :wrong, :right, :board

  def initialize(board)
    @board = board
    @guesses = 0
    @wrong = 0
    @right = 0
  end

  def correct!
    guess!
    @right += 1
  end

  def incorrect!
    guess!
    @wrong += 1
  end

  def guess!
    @guesses += 1
  end

  def guess?(letter)
    status = false
    #here is the logic of if a guess is correct(return true)
    #or if it is a wrong guess(return false)
    #this used to be game.reveal, but really when u say it in a sentence it would 
    #"the player guessed this letter"
    correct_letter = []

    board.word.each_index.select do |i| 
      if board.word[i] == letter
        correct_letter << i
      end
    end
    mark(correct_letter)
  end

  def mark(correct)
    correct.each do |i|
      board.blanks[i] = letter
    end
    board.blanks
  end

  def lost?
    @wrong >= 6
  end

  def won?
    
  end
end