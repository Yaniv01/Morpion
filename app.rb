require 'bundler'
Bundler.require
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/BoardCase'
require_relative 'lib/board'
require_relative 'Show'

puts "Quel est le nom du premier joueur ?"
print'>'
name = gets.chomp
 
player1 = Player.new ("#{name}")
puts "\n"
player1.symbol = "X"
puts " Le joueur #{player1.name} a été crée et aura le symbole #{player1.symbol}"
puts "\n" 

puts "Quel est le nom du second joueur ?"
print '>'
name = gets.chomp
player2 = Player.new ("#{name}")
puts "\n"
player2.symbol = "O"



puts " Le joueur #{player2.name} a été crée et aura le symbole #{player2.symbol}"
puts "\n"

puts "C'est a #{player1.name} de jouer"
puts "\n"

puts "Quelle case choisis tu #{player1.name} ?"



