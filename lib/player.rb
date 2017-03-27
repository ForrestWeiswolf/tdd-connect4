class Player
	attr_reader :token
	def initialize(token)
		@token = token
	end

	def move(board)
		puts board
		puts "Where would you like to drop a piece, player #{@token}?"
		move = parse_move(gets.chomp)
		return move	
	end

	def parse_move(input)
		begin
			col = input[(/((\d)+)$/)]

			unless col
				raise "Exception"
			end

			col = col.to_i - 1
		rescue
			puts "Please input the number of the column you want to play in"
			return self.move
		else
			return col
		end
	end
end

puts "Player loaded"