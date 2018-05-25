require_relative("dice.rb")
require_relative("player.rb")
require_relative("board.rb")
require_relative("game.rb")



class Runner

  def initialize
    @board = Board.new()
    @board.set_snakes_and_ladders(5, 50)
    @player1 = Player.new("")
    @player2 = Player.new("")
    @dice = Dice.new
    @players = [@player1, @player2]
    @game = Game.new(@board, @dice, @players)
    p "initialize called"
    get_user_data()
  end

    def get_user_data
      p "Welcome to Snakes n Ladders!"
      p "Please enter Player 1 name...."
      player1_name = gets.chomp
      p "Please enter Player 2 name..."
      player2_name = gets.chomp
      @player1.name = player1_name
      @player2.name = player2_name

      while @game.status == "playing"
        player_take_turn(@player1)
        player_take_turn(@player2)
        end
    end

    def player_take_turn(player)
      p "#{player.name} press enter to roll the dice"
      gets.chomp
      roll = @game.roll_dice()
      p "#{player.name} has rolled a #{roll}"
      @game.move_player(player, roll)
      player_position = @game.check_player_position(player)
      p "#{player.name} has landed on tile number #{player_position}"
      effect = @game.get_tile(player_position)
      p "This tile has effect #{effect}"
      @game.move_player(player, effect)
      new_position= @game.check_player_position(player)
      p "#{player.name} is now on tile number #{new_position}"
      @game.check_win(player)
      if @game.status == "stopped"
        p "Congratulations! #{player.name} has won the game!"
      end
      
    end




end

Runner.new()
