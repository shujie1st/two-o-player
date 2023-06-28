require './player'
require './game'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
newGame = Game.new(player1, player2)
newGame.start_game
