require_relative 'guessing_game'

describe GuessingGame do
  before do
    @test_game = GuessingGame.new("aadvark")
  end

  it "Should return array of revealed letters" do
    expect(@test_game.revealed_letters).to eq(["-", "-", "-", "-", "-", "-", "-"])
  end

  it "Should find all occurrences of letter \"a\" in aadvark" do
    expect(@test_game.search_for_letter("a")).to eq(["a", "a", "-", "-", "a", "-", "-"])
  end

end
