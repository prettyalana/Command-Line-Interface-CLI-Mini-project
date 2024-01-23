require 'minitest/autorun'
require './game'


class TestGame < Minitest::Test
    def test_game_rules
        game = Game.new
        assert_equal puts, game.rules, "Game rules method failed"
    end
    def test_play_again
        game = Game.new
        assert_equal puts, game.play_again, "Play again method failed"
    end
end
