require "game"

describe Game do 
	let(:game){ Game.new() }
	it 'has a board' do 
		expect(game.board.class).to eql(Board)
	end
end