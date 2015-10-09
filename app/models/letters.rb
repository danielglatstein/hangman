require 'pry'
require_relative 'word.rb'
require_relative 'letters.rb'
class Letters
  attr_accessor :wrong, :word

  def initialize
    @wrong = []
  end

  def prepare
    Word.select.split('')
  end

  def blank
    Array.new(prepare.length, "_")
  end
end