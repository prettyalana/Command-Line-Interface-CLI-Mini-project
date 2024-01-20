require 'minitest/autorun'
require './game_ref'


class TestGame < Minitest::Test
    def test_game_rules
        game = Game.new
        assert_equal puts, game.rules, "Game rules method failed"
    end
    def test_game_over
        game = Game.new
        assert_equal puts, game.game_over, "Game over method failed"
    end
end