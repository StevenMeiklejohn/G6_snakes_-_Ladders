
require("minitest/autorun")
require("minitest/rg")
require_relative("../board.rb")
require_relative("../player.rb")
require_relative("../dice.rb")
require_relative("../game.rb")



class TestGame<MiniTest::Test

  def setup()
    @board = Board.new()
    @player1 = Player.new("player1")
    @player2 = Player.new("player2")
    @dice = Dice.new
    @players = [@player1, @player2]

    @game = Game.new(@board, @dice, @players)
  end

  def test_player_has_initial_position
    assert_equal(1, @game.check_player_position(@player1))
    assert_equal(1, @game.check_player_position(@player2))
  end

  def test_can_move_player
    roll = 5
    @game.move_player(@player1, 5)
    assert_equal(6, @game.check_player_position(@player1))
  end



end
