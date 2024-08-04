# Player class which contains the name and mark of a player
class Player
  def initialize(name, mark)
    @player_name = name
    @player_mark = mark
  end

  def mark
    @player_mark
  end

  def name
    @player_name
  end
end
