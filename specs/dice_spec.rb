require("minitest/autorun")
require("minitest/rg")

require_relative("../dice")

class TestDice < MiniTest::Test

  # def setup
  #   dice = Dice.new()
  # end

  def test_roll()
      dice = Dice.new()
      assert(dice.roll().between?(0,7))
  end

  # def test_four_roll()
  #   actual = dice.four_roll()
  #   assert_equal(4, actual.length())
  # end







end
