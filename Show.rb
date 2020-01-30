require 'pry'
require 'bundler'

Bundler.require

require_relative 'lib/board'
require_relative 'lib/BoardCase'

class Show

	def board_representation
	puts "Voici le tableau :"
	puts "			1			2			3		"
	puts "			A #{@A1.value} 	|	#{@A2.value}	|	#{@A3.value} 	"
	puts "-"*20
	puts "			B	#{@B1.value}	|	#{@B2.value}	|	#{@B3.value}	"
	puts "-"*20
	puts "			C #{@C1.value} 	|#{@C2.value} 	|	#{@C3.value}	"

	end
end

binding.pry
