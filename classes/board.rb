class Board
  def initialize
    @gameboard = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  end

  def show_board
    @gameboard.each_with_index do |value, index|
      if [2, 5, 8].include?(index)
        print " #{value}\n"
      else
        print " #{value} |"
      end
    end
  end

  def reset_board
    @gameboard = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  end

  def check_board
    if @gameboard[0] == @gameboard[1] && @gameboard[1] == @gameboard[2]
      return false
    elsif @gameboard[3] == @gameboard[4] && @gameboard[4] == @gameboard[5]
      return false
    elsif @gameboard[6] == @gameboard[7] && @gameboard[7] == @gameboard[8]
      return false
    elsif @gameboard[0] == @gameboard[4] && @gameboard[4] == @gameboard[8]
      return false
    elsif @gameboard[2] == @gameboard[4] && @gameboard[4] == @gameboard[6]
      return false
    elsif @gameboard[0] == @gameboard[3] && @gameboard[3] == @gameboard[6]
      return false
    elsif @gameboard[1] == @gameboard[4] && @gameboard[4] == @gameboard[7]
      return false
    elsif @gameboard[2] == @gameboard[5] && @gameboard[5] == @gameboard[8]
      return false
    end

    true
  end

  def change_board(mark)
    puts 'Please enter what you tile you want to change'
    input = gets.chomp.to_i
    until @gameboard[input].is_a?(Integer)
      puts 'Please enter a valid tile'
      input = gets.chomp.to_i
    end
    return unless @gameboard[input].is_a?(Integer)

    @gameboard[input] = mark
  end
end
