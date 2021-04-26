class Game
  attr_accessor :current_player, :next_player, :question
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @next_player = player2
    @question = Question.new
  end

  def change_turns
    turn_finished = self.current_player
    self.current_player = self.next_player
    self.next_player = turn_finished
  end


  def ask_question
    self.question.question_reset
    puts "#{self.current_player.name}: #{self.question.question_content}"
    print "> "
    answer = $stdin.gets.chomp

    if self.question.answer == answer.to_i
      puts "YES! You are correct"
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      self.game_status
    else
      puts "I am sorry, but that's just not right"
      current_player.lose_life
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      self.game_status
    end
  end

  def game_status
    if player1.lives == 0
      puts "Player 2 wins with a score of #{player2.lives}"
      puts "---- GAME OVER ----"
      puts "Good bye!"
      player1.reset_lives
      player2.reset_lives
    elsif player2.lives == 0
      puts "Player 1 wins with a score of #{player1.lives}"
      puts "---- GAME OVER ----"
      puts "Good bye!"
    else
      self.change_turns
      self.ask_question
    end
  end


end