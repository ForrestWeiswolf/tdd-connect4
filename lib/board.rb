class Board
	attr_reader :grid
	def initialize()
		@grid = []
		7.times do 
			@grid.push([])
			6.times do 
				@grid[-1].push(nil)
			end
		end
	end

	# def winner
	# 	result = false
	# 	(0..3).each do |n|
	# 		#if a row is all the same token:
	# 		result = @grid[n][0] if @grid[n].all?{|item| item == @grid[n][0]} && @grid[n][0] 
	# 		#if a column is all the same token:
	# 		result = @grid[0][n] if @grid.all?{|row| row[n] == @grid[0][n]} && @grid[0][n]
	# 	end
	# 	#diagonals:
	# 	result = grid[0][0] if (0..3).all?{|n| grid[n][n] == grid[0][0]} && grid[0][0]
	# 	result = grid[3][0] if (0..3).all?{|n| grid[3-n][n] == grid[3][0]} && grid[3][0]

	# 	#check if board is full:
	# 	result = "DRAW" if @grid.flatten.all? & !result

	# 	return result
	# end

	#the token 'drops' to the lowest empty space in the column it's played in
	def play(col, token)
		(0..6).reverse_each do |row|
			unless @grid[row][col]
				@grid[row][col] = token
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