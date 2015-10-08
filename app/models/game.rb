require 'pry'
require_relative 'letters.rb'

class Game
  attr_accessor :word, :letters

  def initialize
    @word = Word.new
    @letters = Letters.new
  end

  def wrong_guess(letter)
    #take wrong input and add it to the wrong array
    #this pushes the incorrect guess into letters.wrong
    if valid? && !word.select.include?(letter)
      letters.wrong << letter
    end
  end

  def remove_letter(letter)
    if valid?
      modified = letters.all.delete(letter)
      modified
    end
  end

  def accept_letter
    #this method takes the selected letter and adds it to the hangman
    if valid? && word.select.include?(letter)
      letters.blank[indexed_to_place_in_word] << letter
    end
  end

  def valid?(letter)
    if letters.all.include?(letter)
      return true
    else
      return false
    end
  end

  def order(letter)
    letter_input = gets.chomp
    valid?
    if false
      reject_letter
    end
    word_contains?
    if true
      accept_letter
    elsif false
      remove_letter
    end
  end
  
end
