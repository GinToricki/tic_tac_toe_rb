require_relative 'board'
require_relative 'player'

class Game
  def initialize
    @board = Board.new
  end

  def play_game
    player1= Player.new("Tin", "x")
    player2 = Player.new("Roko", "o")

    while @board.check_board
      @board.show_board
      @board.change_board(player1.mark)
    end
  end
end

game = Game.new
game.play_game
