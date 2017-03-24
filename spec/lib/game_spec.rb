require "game"

describe Game do 
	let(:game){ Game.new() }
	it 'has a board' do 
		expect(game.board.class).to eql(Board)
	end
	it 'has players' do
		expect(game.players[0].class).to eql(Player)
	end

	it 'keeps track of the current player' do
		expect(game.current.class).to eql(Player)
	end

	describe ".turn" do		
		it "asks the current player for a move" do
			playerX = double
			playerO = double
			allow(playerX).to receive(:move).and_return(1)
			allow(playerX).to receive(:token).and_return("X")
			allow(playerO).to receive(:move).and_return(2)
			allow(playerO).to receive(:token).and_return("O")
			game_with_mocks = Game.new([playerX, playerO])

			expect(game_with_mocks.current).to receive(:move)
			game_with_mocks.turn
		end

		it "updates @current" do
			#yes, it's WET, but rspec doesn't let you do otherwise, as far as I could find
			playerX = double
			playerO = double
			allow(playerX).to receive(:move).and_return(1)
			allow(playerX).to receive(:token).and_return("X")
			allow(playerO).to receive(:move).and_return(2)
			allow(playerO).to receive(:token).and_return("O")
			game_with_mocks = Game.new([playerX, playerO])

			expect(game_with_mocks.current.token).to eql("X")
			game_with_mocks.turn
			expect(game_with_mocks.current.token).to eql("O")
		end
	end
end