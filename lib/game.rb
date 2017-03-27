require_relative 'board'
require_relative "player"

class Game
	attr_reader :board, :players, :current
	def initialize(players = [Player.new("X"), Player.new("O")])
		@board = Board.new()
		@players = players
		@current = players[0]
	end

	def gameloop
		until @board.winner do
			self.turn	
		end
		puts "Winner: #{@board.winner}"
	end

	def turn
		move = @current.move(@board)
		if board.invalid_move(move)
			puts "That column is full."
			self.turn
		else
			board.play(move, @current.token)
			@current = players[players.find_index(@current)+1]
		end
	end
end