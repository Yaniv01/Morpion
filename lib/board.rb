require 'pry'
require_relative 'BoardCase'
require_relative 'Show'

class Board
	attr_accessor :array_cases , :turn_counter, :game_win

	def initialize
		@A1 = BoardCase.new("A1")
		@A2 = BoardCase.new("A2")
		@A3 = BoardCase.new("A3")
		@B1 = BoardCase.new("B1")
		@B2 = BoardCase.new("B2")
		@B3 = BoardCase.new("B3")
		@C1 = BoardCase.new("C1")
		@C2 = BoardCase.new("C2")
		@C3 = BoardCase.new("C3")
	
		@array_cases = [@A1.value ,@A2.value ,@A3.value ,@B1.value ,@B2.value ,@B3.value ,@C1.value ,@C2.value ,@C3.value]
		@turn_counter = 0
		

	end
	


	def play_turn(player, board)
        @count_turn = 0
        i = rand(0..1)
        while  @count_turn != 9
            
            Show.new.show_board(board)
            puts "À toi de jouer #{player[i].name} :"
            choice = gets.chomp
            if choice == "A1" && board.array_cases[0] == " "
                board.array_cases[0] = player[i].symbol
            elsif choice == "A2" && board.array_cases[1] == " "
                board.array_cases[1] = player[i].symbol    
            elsif choice == "A3" && board.array_cases[2] == " "
                board.array_cases[2] = player[i].symbol    
            elsif choice == "B1" && board.array_cases[3] == " "
                board.array_cases[3] = player[i].symbol    
            elsif choice == "B2" && board.array_cases[4] == " "
                board.array_cases[4] = player[i].symbol    
            elsif choice == "B3" && board.array_cases[5] == " "
                board.array_cases[5] = player[i].symbol    
            elsif choice == "C1" && board.array_cases[6] == " "

                board.array_cases[6] = player[i].symbol    
            elsif choice == "C2" && board.array_cases[7] == " "
                board.array_cases[7] = player[i].symbol    
            elsif choice == "C3" && board.array_cases[8] == " "
                board.array_cases[8] = player[i].symbol    
            else
                puts "Vous ne pouvez pas jouer sur cette case."
                i = (i - 1) % 2			

						end
		
						if "o" == board.victory?()
             if "o" == player[1].symbol
               puts "le joueur #{player[1]} a gagné !"
            return
            elsif "o" == player[0].symbol
             puts "le joueur #{player[0]} a gagné !"
            return
             end
            end

        @count_turn += 1
        i = (i + 1) % 2
        end
        	puts "Match nul ..."
        return
    end

		 def victory?
        if (@A1.value == "o" && @A2.value == "o" && @A3.value == "o") || (@A1.value == "x" && @A2.value == "x" && @A3.value == "x")
            return @A1.value
        elsif (@A1.value == "o" && @A2.value == "o" && @A3.value == "o") || (@A1.value == "x" && @A2.value == "x" && @A3.value == "x")
            return @A1.value
        elsif (@A1.value == "o" && @A2.value == "o" && @A3.value == "o") || (@A1.value == "x" && @A2.value == "x" && @A3.value == "x")
            return @A1.value
        elsif (@B1.value == "o" && @B2.value == "o" && @B3.value == "o") || (@B1.value == "x" && @B2.value == "x" && @B3.value == "x")
            return @B1.value
        elsif (@B1.value == "o" && @B2.value == "o" && @B3.value == "o") || (@B1.value == "x" && @B2.value == "x" && @B3.value == "x")
            return @B1.value
        elsif (@B1.value == "o" && @B2.value == "o" && @B3.value == "o") || (@B1.value == "x" && @B2.value == "x" && @B3.value == "x")
            return @A1.value
        elsif (@C1.value == "o" && @C2.value == "o" && @C3.value == "o") || (@C1.value == "x" && @C2.value == "x" && @C3.value == "x")
            return @A1.value
        elsif (@C1.value == "o" && @C2.value == "o" && @C3.value == "o") || (@C1.value == "x" && @C2.value == "x" && @C3.value == "x")
            return @A1.value
        elsif (@C1.value == "o" && @C2.value == "o" && @C3.value == "o") || (@C1.value == "x" && @C2.value == "x" && @C3.value == "x")
            return @A1.value
        elsif (@A1.value == "o" && @B2.value == "o" && @C3.value == "o") || (@A1.value == "x" && @B2.value == "x" && @C3.value == "x")
            return @A1.value
        elsif (@C1.value == "o" && @B2.value == "o" && @A3.value == "o") || (@C1.value == "x" && @B2.value == "x" && @A3.value == "x")
            return @A1.value
        else @count_turn == 9 
            @game_win = false
        end
		

	end
end





