require 'board'
require 'show'
require 'player'
require 'BoardCase'
require 'pry'

class Game
attr_accessor :players , :current_player , :count_turn , :board , :status

def initialize

@player1 = Player.new("Joueur 1")
@player1.symbol ="X"
@player2 = Player.new("Joueur 2")
@player2.symbol ="Y"
@players = [@player1 , @player2]
@current_player = @player1
@status = "on going"
@count_turn = 0
@board = Board.new
end


