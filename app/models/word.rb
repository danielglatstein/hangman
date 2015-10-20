require_relative '../../config/environment.rb'
class Word

  def self.wordlist
   thing = File.absolute_path("db/wordlist.json")
   wordlist = File.read(thing)
   JSON.parse(wordlist).values.flatten
  end

  def self.answer
    binding.pry
    self.wordlist.sample
  end
end

Word.answer