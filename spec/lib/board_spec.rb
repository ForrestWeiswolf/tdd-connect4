require 'board'

describe Board do
	let!(:board) do
		Board.new()
	end
	it 'has a 2d array' do
		expect(board.grid[0].class).to eql(Array)
	end

	describe ".play" do
		it "puts a token on the bottom row of an empty board" do
			board.play(0, "X")
			expect(board.grid[0][3]).to eql("X")
		end
		it "puts a token above all of the filled space in a column" do
			board.play(0, "X")
			board.play(0, "O")
			expect(board.grid[0][2]).to eql("O")
		end
	end

	describe ".winner" do 
		it "returns false when neither player has won" do
			expect(board.winner).to eql(false)
		end
		context "when a player has filled a whole column" do
			it "returns that player's token" do
				4.times {board.play(0, "X")}
				expect(board.winner).to eql("X")
			end
		end
		context "when a player has filled a whole row" do
			it "returns that player's token" do
				(0..3).each{|n| board.play(n, "X")}
				expect(board.winner).to eql("X")
			end
		end
		context "when a player has filled the ascending diagonal" do
			it "returns that player's token" do
				(0..3).each do |n|
					n.times{board.play(n, "O")}
					board.play(n, "X")
				end
				expect(board.winner).to eql("X")
			end
		end
		context "when a player has filled the descending diagonal" do
			it "returns that player's token" do
				(0..3).reverse_each do |n|
					(3-n).times{board.play(n, "O")}
					board.play(n, "X")
				end
				expect(board.winner).to eql("X")
			end
		end

	end
end