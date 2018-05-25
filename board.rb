require_relative("tile.rb")

class Board

attr_accessor :tile_array

  def initialize()
    @tile_array = []
    populate_board()
  end

  def populate_board()
    counter = 1
    while counter <= 200
      @tile_array << Tile.new(counter, 0)
      counter += 1
    end

  end

  def set_snakes_and_ladders(number_of_snakes, number_of_ladders)
    counter = 1
    while counter <= number_of_ladders
      tile_to_change = @tile_array.sample()
      if(tile_to_change.position < 80)
        tile_to_change.effect = rand(10..20)
        counter += 1
      end
    end
    counter2 = 1
    while counter2 <= number_of_snakes
      tile_to_change = @tile_array.sample()
      if(tile_to_change.position >20 && tile_to_change.position< 99)
        if(tile_to_change.effect != 0)
        tile_to_change.effect = rand(10..19) * -1
        counter2 += 1
        end
      end
    end
  end


end
