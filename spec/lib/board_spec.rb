require 'board'

describe Board do
	let!(:board) do
		Board.new()
	end
	it 'has a 7*6 array' do
		expect(board.grid[6].size).to eql(6)
	end

	# describe ".play" do
	# 	it "puts a token on the bottom row of an empty board" do
	# 		board.play(0, "X")
	# 		expect(board.grid[3][0]).to eql("X")
	# 	end
	# 	it "puts a token above all of the filled space in a column" do
	# 		board.play(0, "X")
	# 		board.play(0, "O")
	# 		expect(board.grid[2][0]).to eql("O")
	# 	end
	# end

	# describe ".winner" do 
	# 	it "returns false when neither player has won" do
	# 		expect(board.winner).to eql(false)
	# 	end
	# 	context "when a player has filled a whole column" do
	# 		it "returns that player's token" do
	# 			4.times {board.play(0, "X")}
	# 			expect(board.winner).to eql("X")
	# 		end
	# 	end
	# 	context "when a player has filled a whole row" do
	# 		it "returns that player's token" do
	# 			(0..3).each{|n| board.play(n, "X")}
	# 			expect(board.winner).to eql("X")
	# 		end
	# 	end
	# 	context "when a player has filled the ascending diagonal" do
	# 		it "returns that player's token" do
	# 			(0..3).each do |n|
	# 				n.times{board.play(n, "O")}
	# 				board.play(n, "X")
	# 			end
	# 			expect(board.winner).to eql("X")
	# 		end
	# 	end
	# 	context "when a player has filled the descending diagonal" do
	# 		it "returns that player's token" do
	# 			(0..3).reverse_each do |n|
	# 				(3-n).times{board.play(n, "O")}
	# 				board.play(n, "X")
	# 			end
	# 			expect(board.winner).to eql("X")
	# 		end
	# 	end
	# 	context "when the board is full and no-one has won" do
	# 		it "returns 'DRAW'" do 
	# 			(0..2).each do |col|
	# 				3.times{board.play(col, "X")}
	# 				board.play(col, "O")
	# 			end
	# 			3.times{board.play(3, "O")}
	# 			board.play(3, "+")
	# 			puts board.show

	# 			expect(board.winner).to eql("DRAW")
	# 		end
	# 	end
	# end

	# describe ".invalid_move" do
	# 	context "when given a valid move" do 
	# 		it "returns false" do
	# 			expect(board.invalid_move(1)).to eql(false)
	# 		end
	# 	end
	# 	context "when given coordinates outside the board" do 
	# 		it "returns 'That's not a space on the board.'" do
	# 			expect(board.invalid_move(12)).to eql("That's not a space on the board.")
	# 			expect(board.invalid_move(-1)).to eql("That's not a space on the board.")
	# 		end
	# 	end
	# 	context "when the column is already full" do 
	# 		it "returns 'That space is already filled.'" do
	# 			4.times{|n| board.play(0, "X")}
	# 			expect(board.invalid_move(0)).to eql("That column is already filled.")
	# 		end
	# 	end
	# end

end