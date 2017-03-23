require "board"

class Game
	attr_reader :board, :players
	def initialize
		@board = Board.new()
		@players = ["X", "O"]
	end
end