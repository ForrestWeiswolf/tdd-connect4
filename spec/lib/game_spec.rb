require "game"

describe Game do 
	let(:game){ Game.new() }
	let(:playerX) do
		double('Player', move: 1, token: "X")
	end
	let(:playerO) do
		double('Player', move: 2, token: "O")
	end
	let(:game_with_mocks) do 
		Game.new([playerX, playerO])
	end

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
			expect(game_with_mocks.current).to receive(:move)
			game_with_mocks.turn
		end

		it "updates @current" do
			expect(game_with_mocks.current.token).to eql("X")
			game_with_mocks.turn
			expect(game_with_mocks.current.token).to eql("O")
			game_with_mocks.turn
			expect(game_with_mocks.current.token).to eql("O")
		end
	end

	describe ".gameloop" do
		it "calls .turn" do 
			game_with_mocks.gameloop
			expect(game_with_mocks).to receive(:turn)
		end

		context "when someone wins" do 
			it "announces the winner" do 
				game_with_mocks.gameloop
				expect($stdout).to receive(:puts)# with "Player X has won!"
			end 
		end
	end
end