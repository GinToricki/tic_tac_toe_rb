class Board
  @gameboard = [1,2,3,4,5,6,7,8,9]

  def show_board 
    @gameboard.each_with_index do |value, index|
      if index == 2 || index == 5
        puts
      else
        p value + "|"
      end
    end
  end
end

b = Board.new
b.show_board