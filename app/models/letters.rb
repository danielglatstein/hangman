require 'pry'
require_relative '../../config/environment.rb'

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