require 'minitest/autorun'
require './game'


class TestGame < Minitest::Test
    def setup
        @game = Game.new
    end
    def test_game_over
        assert_output(/Sorry, #{@player_name} you lost the game./) {@game.game_over} 
    end
    def test_winner
        game = Game.new
        assert_output(/#{@player_name} is a winner!/) {@game.winner}
    end
end
