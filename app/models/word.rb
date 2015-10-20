require_relative '../../config/environment.rb'

class Word
  
  @@previously_chosen = []
  
  def initialize(word)
    @@previously_chosen << self
    @word = word
  end

  def self.wordlist
   thing = File.absolute_path("db/wordlist.json")
   wordlist = File.read(thing)
   JSON.parse(wordlist)['wordlist']
  end

  def to_s
    @word
  end

  def self.draw
    wordlist = self.wordlist
    @@previously_chosen.each do |word|
      wordlist.delete(word.to_s)
    end
    Word.new(wordlist.sample)
  end

end
