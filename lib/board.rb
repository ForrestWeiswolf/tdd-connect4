class Board
	attr_reader :grid
	def initialize()
		@grid = [[nil, nil, nil, nil], 
				[nil, nil, nil, nil],
				[nil, nil, nil, nil],
				[nil, nil, nil, nil],]
	end

	def winner
		result = false
		(0..3).each do |n|
			#if a row is all the same token:
			result = @grid[n][0] if @grid[n].all?{|item| item == @grid[n][0]} && @grid[n][0] 
			#if a column is all the same token:
			result = @grid[0][n] if @grid.all?{|row| row[n] == @grid[0][n]} && @grid[0][n]
		end
		return result
	end

	#the token 'drops' to the lowest empty space in the column it's played in
	def play(col, token)
		(0..3).reverse_each do |row|
			unless @grid[col][row]
				@grid[col][row] = token
				break
			end
		end
	end
end