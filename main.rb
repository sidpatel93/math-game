require './player.rb'
require './question.rb'
require './game.rb'

# Initialize the players and game
player1 = Player.new
player2 = Player.new
game = Game.new

player = player1
# Loop over untill one of the player lost the game
begin
  # Start with player 1
  q = Question.new
  puts "#{player1.name}: #{q.question}"
  right = game.challenge(q.answer)
  puts "#{player1.name}: #{game.response(right)}"
  right ? player1.right : player1.lose
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  if player1.lives == 0
    winner = player2
    break
  end
  puts game.new_turn

  # player 2 chance
  q = Question.new
  puts "#{player2.name}: #{q.question}"
  right = game.challenge(q.answer)
  puts "#{player2.name}: #{game.response(right)}"
  right ? player2.right : player2.lose
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  if player2.lives == 0
    winner = player1
    break
  end
end while player1.lives > 0 && player2.lives > 0


puts game.game_over(winner.name, winner.score)