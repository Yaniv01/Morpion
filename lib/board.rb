require 'pry'
require_relative 'BoardCase.rb'

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
	
		@array_cases = [@A1 ,@A2 ,@A3 ,@B1 ,@B2 ,@B3 ,@C1 ,@C2 ,@C3]
		@turn_counter = 0
		@game_win = false

	end
	

	def board_representation
	  puts "Voici le tableau :"
		puts "	  1   2   3    "   
		puts " 	A|#{array_cases[0].value} | #{array_cases[1].value} | #{array_cases[2].value} |"
		puts "	-------------"
		puts " 	B|#{array_cases[3].value} | #{array_cases[4].value} | #{array_cases[5].value} |"
		puts "	-------------"
		puts "	C|#{array_cases[6].value} | #{array_cases[7].value} | #{array_cases[8].value} |"
		puts "    	-------------"


	end

	def play_turn(player)
		if player == current_player
			player.symbol = "X"
		else
			player.symbol ="O"
		end

		puts "#{current_player.name} , que souhaite tu jouer ?"
		input = gets.chomp

		loop do
			case input

			when "A1"
			if array_cases[0].value !=" "
				puts " "
				puts "Tu ne peux pas choisir cette case, choisis en une autre"
				print '>'
				input = gets.chomp

			else
				array_cases[0].value = player.symbol
				break
			end

			when "A2"
			  if array_cases[1].value !=" "
					puts ""                              
					puts "Tu ne peux pas choisir cette case, choisis en une autre"
					print '>'
					input = gets.chomp																								
				else							                                
					array_cases[1].value = player.symbol
				break
				ii


			end
			
			when "A3"
				if array_cases[2].value !=" "
					puts " "
					puts "Tu ne peux pas choisir cette case, choisis en une autre"
					print '>'
					input = gets.chomp
				else
					array_cases[2].value = player.symbol
				break
			end
			when "B1"
				if array_cases[3].value !=" "
					puts " "
					puts "Tu ne peux pas choisir cette case, choisis en une autre"
					print '>'
					input = gets.chomp
				else
					array_cases[3].value = player.symbol  
					break
				end

			 when "B2"     
			 	if array_cases[4].value !=" "
			 		puts " "                              
					puts "Tu ne peux pas choisir cette case, choisis en une autre"  
					print '>'               
					input = gets.chomp
				else
					array_cases[4].value = player.symbol                              
					break                                                                
					end 
					
					when "B3"
						if array_cases[5].value != " "
							puts " "
							puts "Tu ne peux pas choisir cette case, choisis en une autre"
							print '>'
							input =gets.chomp
						else
						array_cases[5] = player.symbol
						break
						end

						when "C1" 
							if array_cases[6].value != " "
								puts " "
								puts "Tu ne peux pas choisir cette case, choisis en une autre"
								print '>'
								input = gets.chomp
							else
								array_cases[6].value = player.symbol
							 break
							end
							when "C2"
								if array_cases[7].value != " "
									puts " "
									puts "Tu ne peux pas choisir cette case, choisis en une autre"
									print '>'
									input = gets.chomp
								else 
									array_cases[7].value = player.symbol
							 	 break
							end
							when "C3"
								if array_cases[8].value != " " 
									puts " "
									puts "Tu ne peux pas choisir cette ca	se choisis en une autre"
									print '>'
									input = gets.chomp
								else
									array_cases[8].value =player.symbol
								 break
								end

						else 
							puts " "
							puts "    La case que tu as entrée n'est pas valide essaie avec les majuscules"
							print ">"
							input= gets.chomp
						end



					

		end
		

	end
end


Board.new.board_representation
end

