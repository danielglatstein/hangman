require 'pry'
require_relative 'letters.rb'
require_relative 'game.rb'

class Word

  @@bank = ["weed", "ganja", "pot", "sensi", "skunk", "kush", "method"]
  
  def self.all
    @@bank
  end

  def self.answer
    self.all.sample
  end

end