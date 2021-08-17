require 'pp'
require './players'
require './game'
require './questions'

$player1 = Player.new('Player 1')
$player2 = Player.new('Player 2')
$game = Game.new
$question = Questions.new

def game_start
  $question.new_q
  puts "Player #{$game.turn}: #{$question.question}" 
  answer = gets.chomp.to_i
  
  if (answer == $question.answer)
    puts "Player #{$game.turn}: YES! You are correct!"

  else 
    puts "Player #{$game.turn}: Seriously? No!"

    ($game.turn == 1) ? $player1.lose_life : $player2.lose_life

   # puts "#{$player1.lives_left} vs #{$player2.lives_left}"
  end

  #end game conditions
 
  if $player1.lives == 0 
    puts "Player 2 wins with a score of #{$player2.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  elsif $player2.lives == 0
    puts "Player 1 wins with a score of #{$player1.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  else
    puts "#{$player1.lives_left} vs #{$player2.lives_left}"
    $game.switch_turns
    $question
    puts "----- NEW TURN -----"
    game_start 
  end

end

game_start


