require 'pry'
require_relative 'word.rb'

class Letters
  attr_accessor :all, :wrong

  def initialize
    @all = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    @wrong = []
  end

  def prepare
    Word.new.select.split('')
  end

  def blank
    Array.new(prepare.length, "_")
  end
end