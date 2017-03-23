require "game"

describe Game do 
	let(:game){ Game.new() }
	it 'has a board' do 
		expect(game.board.class).to eql(Board)
	end
	it 'has players' do
		expect(game.players.class).to eql(Array)
	end

	# describe ".play" do
	# 	before do
	# 		playerX = double
	# 		playerY = double
	# 		allow(playerX).to receive(:play).and_return('1')
	# 		allow(playerY).to receive(:play).and_return('2')
	# 	end

	# 	context "when the game starts" do 
	# 		it "asks the first player for a move" do
	# 			expect(playerX).to receive(:play)
	# 		end
	# 	end
	# end
end