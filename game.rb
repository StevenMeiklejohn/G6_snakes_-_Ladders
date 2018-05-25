
class Game

  def initialize(board, dice, players)
    @board = board
    @dice = dice
    @players = players
  end

  def check_player_position(player_to_check)
    for player in @players
      if player == player_to_check
        return player.position
      end
    end
  end

  def move_player(player_to_move, effect)
    for player in @players
      if player == player_to_move
        player.position += effect
      end
    end
  end




  def roll_dice
    return @dice.roll()
  end

  # def move_player






end
