require 'pry'

class Board
  #this is gonna be the picture
  #it will have to update after every input
  attr_reader :word, :letters
  
  def initialize
    @word = Word.answer
    @letters = Letters.new
  end

  def wrong_guess(letter)
    #take wrong input and add it to the wrong array
    #this pushes the incorrect guess into letters.wrong
    if valid? && !word.include?(letter)
      letters.wrong << letter
    end
  end

  def blanks
    Array.new(word.length, "_")
  end

  def accept_letter
    #this method takes the selected letter and adds it to the hangman
    if valid? && word.answer.include?(letter)
      
    end
  end

  def replace_blank

  end
  
  def valid?(letter)
    if the letter.length = 1 && !letters.wrong.include?(letter)
      return true
    else
      return false
    end
  end

end