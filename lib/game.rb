require "board"
require "player"

class Game
	attr_reader :board, :players, :current
	def initialize(players = [Player.new("X"), Player.new("O")])
		@board = Board.new()
		@players = players
		@current = @players[0]
	end

	def turn
		move = @current.move
		if board.invalid_move(move)
			puts "That column is full."
			self.turn
		else
			board.play(move, @current.token)
			#@current = players[players.find(@current)+1]
		end
	end
end