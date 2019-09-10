# frozen_string_literal: true

# The logic of the game
class Game
  def initialize(board)
    @board = board
    @position = 0
  end

  def play
    take_turn until finished?

    puts 'Finished'
  end

  private

  def finished?
    @position > @board.size
  end

  def take_turn
    throw = rand 6
    @position += throw
    if @board[@position].nil?
      puts "Player threw #{throw}, player moved to square #{@position}"
    elsif @board[@position] < @position
      @position = @board[@position]
      puts "Player threw #{throw} --snake!-- player moved to square #{@position}"
    else
      @position = @board[@position]
      puts "Player threw #{throw} --going up!-- player moved to square #{@position}"
    end
  end
end
