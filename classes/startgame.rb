class StartGame
  attr_reader :player1, :player2, :game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @game = Game.new(player1, player2)

    self.game.ask_question
  end
end