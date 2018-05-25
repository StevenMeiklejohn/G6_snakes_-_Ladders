require("minitest/autorun")
require("minitest/rg")
require_relative("../dice.rb")

class TestDice<MiniTest::Test

  def setup
    @dice = Dice.new()
  end

  def test_dice_can_roll_number
    assert_includes(1..6, @dice.roll())
  end

end
