# require_relative "game"
require_relative "game_ref"
# require_relative "game_ref_two"

game = Game.new
game.play
# game.level_three


# while game.again
#   game.play
#   game = Game.new
# end

while ! game.over
  game = Game.new
  game.play
end

# player = Player.new
# player.play
