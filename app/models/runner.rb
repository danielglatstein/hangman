require 'pry'
require_relative 'letters.rb'
require_relative 'word.rb'

class Game
  attr_accessor :word, :letters

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
