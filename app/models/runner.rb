require 'pry'
require_relative '../../config/environment.rb'

class Runner
  attr_accessor :word, :letters

  def order
    letter = gets.chomp
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
