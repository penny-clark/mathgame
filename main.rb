require './classes/game'
require './classes/player'
require './classes/question'
require './classes/startgame'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

puts player1.player_info
puts player2.player_info

question = Question.new

puts question.question_content
puts question.answer

question.question_reset

puts question.question_content
puts question.answer
