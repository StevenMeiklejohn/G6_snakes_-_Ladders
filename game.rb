
class Game

  attr_accessor :status

  def initialize(board, dice, players)
    @board = board
    @dice = dice
    @players = players
    @status = "playing"
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
        if player.position + effect <= 100
          player.position += effect
        end
      end
    end
  end

  def check_win(player_to_check)
    if player_to_check.position == 100
      @status = "stopped"
    end
  end


  def roll_dice
    return @dice.roll()
  end

  def get_tile(position)
    return @board.tile_array[position -1].effect
  end


  # def move_player






end
