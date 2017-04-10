class Board
	attr_reader :grid, :winner
	def initialize()
		@grid = []
		7.times do 
			@grid.push([])
			6.times do 
				@grid[-1].push(nil)
			end
		end
		@winner = false
	end

	#the token 'drops' to the lowest empty space in the column it's played in
	def play(col, token)
		(0..6).reverse_each do |row|
			unless @grid[col][row]
				@grid[col][row] = token
				break
			end
		end
	end

	# def invalid_move(col)
	# 	#not sure whether this should be in Board class
	# 	if (col > 3) | (col < 0)
	# 	 	return "That's not a space on the board."
	# 	elsif @grid[col][0]
	# 	 	return "That column is already filled."
	# 	else
	# 		return false
	# 	end
	# end


	def show
		result = ""
		@grid.each do |row|
			result = result + row.inspect + "\n"
		end
		return result
	end
end

puts "Board loaded"