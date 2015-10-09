require_relative '../../config/environment.rb'

class Word

  wordlist = File.read('../../db/wordlist.json')
  @@bank = JSON.parse(wordlist).values.flatten
  
  def self.all
    @@bank
  end

  def self.answer
    self.all.sample
  end

end
