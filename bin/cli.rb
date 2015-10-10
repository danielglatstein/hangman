#!/usr/bin/env ruby

require_relative '../config/environment'

x = nil
  
controller = GameController.new
game = Game.new
word = game.word

while x != 'quit'
  puts "x"
  resource = gets.chomp
  
  case resource.downcase
  when 'play'
    controller.guess_prompt
    action = gets.chomp
    if action == 'letter'
      #how do we keep it in this loop until
      #the game is over or the player
      #decides to try to answer
      controller.letter_prompt
      guess = gets.chomp
        if !game.valid(guess)
          controller.invalid_error("letter")  
        elsif game.loss
          controller.game_over(word)
        elsif game.win
          controller.win_message
        else
          game.round(guess)
          puts game.blanks
        end
    #binding.pry
    elsif action == 'answer'
      controller.answer_prompt
      guess = gets.chomp
        if guess == word.join
          controller.win_message
        else game.loss
          controller.game_over(word)
        end
    else
      controller.guess_prompt
    end
  end
end 