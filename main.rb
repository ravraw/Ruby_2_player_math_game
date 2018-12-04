
# This is the main entrypoint into the program
# It requires the other files/gems that it needs

# require 'pry'
require './Player'
require './Question'
require './Game'

game1 = Game.new('Player 1','Player 2')

game1.start_game