require 'pry'

class Game

  def reject_letter
    #take wrong input and add it to the wrong array
  end

  def remove_letter
    #this method takes the selected letter and removes from the letters.all
  end

  def accept_letter
    #this method takes the selected letter and adds it to the hangman
  end

  def word_contains?
    #returns true/false value if words contains? letter
  end

  def valid?
    #is the users input a valid, unused letter
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