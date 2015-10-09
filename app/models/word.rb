require_relative '../../config/environment.rb'

class Word
   thing = File.absolute_path("db/wordlist.json")
   wordlist = File.read(thing)
   @@bank = JSON.parse(wordlist).values.flatten

  def self.all
    @@bank
  end

  def self.answer
    self.all.sample
  end

end
