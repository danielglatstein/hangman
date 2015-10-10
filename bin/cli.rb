#!/usr/bin/env ruby

require_relative '../config/environment'

x = nil
  
controller = GameController.new
new_game = Game.new
word = new_game.word

while x != 'quit'
  puts controller.greeting
  resource = gets.chomp
  
  case resource.downcase
  when 'play'
    controller.guess_prompt
    action = gets.chomp
    if action == 'letter'
      controller.letter_prompt
      guess = gets.chomp
        if !Game.valid(guess)
          controller.invalid_error("letter")  
        elsif Game.loss
          controller.game_over(word)
        elsif Game.win
          controller.win_message
        else
          Game.round(guess)
        end
    elsif action == 'answer'
      game.answer_prompt
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