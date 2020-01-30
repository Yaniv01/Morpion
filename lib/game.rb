require_relative 'board'
require_relative 'Show'
require_relative 'player'
require_relative 'BoardCase'
require 'pry'

class Game
	attr_accessor :player1 , :player2 , :player , :board, :show , :continue

	def initialize
		puts "Quel est le nom du premier joueur ?"
		@player1 = Player.new(gets.chomp , "x")
		puts "Quel est le nom du second ?"
		@player2 = Player.new(gets.chomp , "o")
		@player = [@player1 , @player2]
		@count_turn = 0
		@board = Board.new
		@continue = true
	end

  def turn
		@board.play_turn(@player, @board)
	end

	def new_round
    @board = Board.new
  end
	
	def end_game
    @board.show
    puts "Souhaites tu rejouer ? y pour oui, n pour non :"
    rep = gets.chomp
    if rep == 'y'
     new_round
    elsif rep == 'n'
     @continue = false
    end
  end

end








