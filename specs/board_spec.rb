require("minitest/autorun")
require("minitest/rg")
require_relative("../board.rb")
require_relative("../tile.rb")

class TestBoard<MiniTest::Test

  def setup()
    @tile = Tile.new(0, 0)
    @board = Board.new()
    @board.populate_board
    @board.set_snakes_and_ladders(5, 5)
  end

  def test_board_has_blank_array
    p @board.tile_array
    assert_equal(0, @board.tile_array.length)
  end








end
