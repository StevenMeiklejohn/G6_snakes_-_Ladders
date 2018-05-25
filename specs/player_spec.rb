
require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")

class TestPlayer<MiniTest::Test

  def setup()
    @player = Player.new("Curly Boy")
  end


  def test_curly_boy_has_name()
    assert_equal("Curly Boy", @player.name)
  end


end
