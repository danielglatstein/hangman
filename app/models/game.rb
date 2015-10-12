require_relative '../../config/environment.rb'

class Game
  #this is gonna be the picture
  #it will have to update after every input
  attr_reader :word, :letters, :blanks
  
  def initialize
    @word = Word.answer.split('')
    @letters = Letters.new
    @blanks = Array.new(word.length, "_")
    #changed length of array
  end

  def wrong_guess(letter)
    if valid(letter) && !word.include?(letter)
      letters.wrong << letter
    end
    # puts letters.wrong
  end

  def accept(letter)
    #this method takes the selected letter and adds it to the hangman
    if valid(letter) && word.include?(letter)
      reveal(letter)
    end
  end

  def round(letter)
    if accept(letter)
      print "#{accept(letter)} \n wrong letters: #{letters.wrong} \n \n"
    else
      print "#{reveal(letter)}\n wrong letters: #{wrong_guess(letter)} \n \n"
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
      self.blanks[i] = letter
    end
    self.blanks
  end

  def valid(letter)
    if letter.length == 1 && !letters.wrong.include?(letter) #&& !letters.correct.include?(letter) 
      return true
    else
      return false
    end
  end

  def win
    blanks == word
  end

  def loss
    letters.wrong.length == 6
  end
end

