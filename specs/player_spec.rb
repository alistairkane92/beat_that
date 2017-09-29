require("minitest/autorun")
require("minitest/rg")

require_relative("../player")

class TestPlayer < MiniTest::Test

  def setup
    @player1 = Player.new("John", 0)
  end

  def test_name
    assert_equal("John", @player1.name)
  end

  # def test_four_roll()
  #   actual = @player1.four_roll()
  #   assert_equal(4, actual.length())
  # end

  def test_four_roll()
    actual = @player1.four_roll()
    assert_equal(4, actual.to_s.length())
  end









end
