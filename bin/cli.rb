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
    print game.blanks
    controller.guess_prompt
    action = gets.chomp

      if action == 'start'
        controller.letter_prompt
        letter_guess = gets.chomp

          while !game.loss && !game.win && 
            if !game.valid(letter_guess)
              controller.invalid_error("letter")
            elsif letter_guess == 'answer'
              controller.answer_prompt
              guess = gets.chomp
                if guess == word.join
                  controller.win_message
                else game.loss
                  controller.game_over(word)
                end
            else
              game.round(letter_guess)
            end
          end
      end
    # elsif game.loss
    #     controller.game_over(word)
    # else game.win
    #     controller.win_message
  end
end 