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
    else
      puts "I am sorry, but that's just not right"
    end
  end

end