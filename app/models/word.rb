require 'pry'
require 'json'

require_relative 'letters.rb'
require_relative 'game.rb'
#require_relative '../db/.wordlist.json'

class Word

  #wordlist = File.read('../.db/wordlist.json')
  @@bank = JSON.parse(wordlist)
  
  def self.all
    puts @@bank.values
  end

  def self.answer
    self.all.sample
  end

end

Word.new.self.all