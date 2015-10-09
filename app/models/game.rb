require 'pry'

class Board
  #this is gonna be the picture
  #it will have to update after every input
  attr_reader :word, :letters, :blanks
  
  def initialize
    @word = Word.answer.split('')
    @letters = Letters.new
    @blanks = Array.new(Word.answer.length, "_")
    #how do we make blanks work for word.answer that is two words
    #like ["n","e","w","," ","j","e","r","s","e","y"]
    #so the " " doesnt get a blank put in its space
  end

  def wrong_guess(letter)
    #take wrong input and add it to the wrong array
    #this pushes the incorrect guess into letters.wrong
    if valid? && !word.include?(letter)
      letters.wrong << letter
    end
  end

  def accept(letter)
    #this method takes the selected letter and adds it to the hangman
    if valid? && word.include?(letter)
      reveal
    end
  end

  def reveal(letter)
    correct = []
    word.each_index.select do |i| 
      if word[i] == letter
        correct << i
      end
    end
    correct.each do |i|
      blanks[i] = letter
    end
    blanks
  end

  def valid?(letter)
    if the letter.length == 1 && !letters.wrong.include?(letter) && !letters.correct.include?(letter)
      return true
    else
      return false
    end
  end

  def win
    blanks == word
  end

  def loss
    letters.wrong.length == 5
  end
end