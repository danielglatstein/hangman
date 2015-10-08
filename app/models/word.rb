require 'pry'

class Word

  @@bank = ["weed", "ganja", "pot", "sensi", "skunk", "kush", "method"]
  
  def self.all
    @@bank
  end

  def select
    # binding.pry
    puts self.class.all[rand(self.class.all.size)]
  end

end
  Word.new.select