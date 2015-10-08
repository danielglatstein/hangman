require 'pry'
require_relative 'word.rb'

class Letters

  def prepare
    Word.new.select.split('')
  end

  def blank
    print Array.new(prepare.length, "_")
  end
end

Letters.new.blank