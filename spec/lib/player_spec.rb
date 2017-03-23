require "player"

describe Player do 
	let(:player) {Player.new("X")}
	it "has a token" do
		expect(player).to respond_to(:token)
	end
	it "has a .move method" do 
		expect(player).to respond_to(:move)
	end
end