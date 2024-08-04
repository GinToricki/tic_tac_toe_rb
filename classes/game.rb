require_relative 'board'
require_relative 'player'

class Game
  def initialize
    @board = Board.new
  end

  def play_game
    puts 'Please enter player 1 name'
    p1_name = gets.chomp
    player1 = Player.new(p1_name, 'x')
    puts 'Please enter player 2 name'
    p2_name = gets.chomp
    player2 = Player.new(p2_name, 'o')
    current_player = player1
    switch_player = true

    while @board.check_board
      @board.show_board
      @board.change_board(current_player.mark)
      if switch_player
        current_player = player2
        switch_player = false
      else
        current_player = player1
        switch_player = true
      end
    end
    @board.show_board
    if switch_player
      current_player = player2
      switch_player = false
    else
      current_player = player1
      switch_player = true
    end
    puts "The winner is #{current_player.name}"
  end
end

game = Game.new
game.play_game
