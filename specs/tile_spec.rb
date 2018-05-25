require("minitest/autorun")
require("minitest/rg")
require_relative("../tile.rb")

class TestTile<MiniTest::Test

  def setup()
    @tile = Tile.new(4, 6)
    @tile2 = Tile.new(10, -5)
  end

  def test_tile_has_position
    assert_equal(4, @tile.position)
  end

  def test_has_pstve_effect
    assert_equal(6, @tile.effect)
  end

  def test_has_ngtve_position
    assert_equal(-5, @tile2.effect)
  end
end
