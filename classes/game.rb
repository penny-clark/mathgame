class Game
  attr_accessor :current_player, :next_player

  def initialize(player1, player2)
    @current_player = player1
    @next_player = player2
  end

  def change_turns
    turn_finished = self.current_player

    self.current_player = self.next_player
    self.next_player = turn_finished
  end
    

end