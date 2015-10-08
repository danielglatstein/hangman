require 'pry'

class Word

  @@bank = ["weed", "ganja", "pot", "sensi", "skunk", "kush", "method"]
  
  def self.all
    @@bank
  end

  def select
    self.class.all[rand(self.class.all.size)]
  end

end
