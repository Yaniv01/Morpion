require 'pry'

class Player

 attr_accessor :name , :symbol

	def initialize(name)
		puts "Quel est ton nom ?"
		print '>'

		@name = gets.chomp
		@symbol = symbol

	end  #fin initialize


end
