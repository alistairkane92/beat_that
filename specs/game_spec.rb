require("minitest/autorun")
require("minitest/rg")

require_relative("../game")
require_relative("../player")

class TestGame < MiniTest::Test
  def setup

    @player1 = Player.new("John", 0)
    @player2 = Player.new("Ali", 0)
    @players = [@player1, @player2]

    @game1 = Game.new(@players, @won)
  end

  def test_return_name_of_player
    assert_equal("John", @players[0].name)
  end

  # def test_rotate_players
  #   assert_equal([@player1, @player2], @game1.rotate_players)
  # end

  def test_take_turn
    @game1.take_turn
  end







end
