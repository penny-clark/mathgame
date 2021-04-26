require './classes/game'
require './classes/player'
require './classes/question'
require './classes/startgame'


puts " -----PLAYER CLASS TESTS-----"
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

player1.player_info
player2.player_info
player1.lose_life
player1.player_info
player1.reset_lives
player1.player_info

puts "-------QUESTION CLASS TESTS-------"
# question = Question.new

# puts question.question_content
# puts question.answer

# question.question_reset

# puts question.question_content
# puts question.answer

puts "--------GAME CLASS TESTS--------"
game = Game.new(player1, player2)

# puts game.current_player.name
# puts game.next_player.name

# game.change_turns

# puts game.current_player.name
# puts game.next_player.name

game.ask_question