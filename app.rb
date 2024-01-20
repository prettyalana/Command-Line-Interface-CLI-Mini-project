require_relative "game"

game = Game.new
game.play

while ! game.over
  game = Game.new
  game.play
end
