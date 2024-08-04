class Board

  def initialize
    @gameboard = [1,2,3,4,5,6,7,8,9]
  end

  def show_board
    @gameboard.each_with_index do |value, index|
      if index == 2 || index == 5 || index == 8
        print " #{value}\n"
      else
        print " #{value} |"
      end
    end
  end

  def reset_board
    @gameboard = [0,1,2,3,4,5,6,7,8]
  end

  def check_board
    if @gameboard[0] == @gameboard[1] && @gameboard[1] == @gameboard[2]
      return false
    end
    return true
  end

  def change_board(mark)
    puts "Please enter what you tile you want to change"
    input = gets.chomp.to_i
    if @gameboard[input].is_a?(Integer)
      @gameboard[input] = mark
    end
  end
end

b = Board.new
b.show_board
