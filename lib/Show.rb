require_relative 'board'
require_relative 'BoardCase'

class Show
    def show_board(board)
      puts "   1   2   3"
      puts " A #{board.array_cases[0]} | #{board.array_cases[1]} | #{board.array_cases[2]} |"
      puts "   ---------"
      puts " B #{board.array_cases[3]} | #{board.array_cases[4]} | #{board.array_cases[5]} |"
      puts "   ---------"
      puts " C #{board.array_cases[6]} | #{board.array_cases[7]} | #{board.array_cases[8]} |"
    end
  end
