# require_relative "game"
require_relative "game_ref"

game = Game.new
game.play
# game.level_three


while game.again
  game.play
  game = Game.new
end

# while ! game.over
#   game.play
#   game = Game.new
# end

# player = Player.new
# player.play
