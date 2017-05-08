require_relative 'guessing_game'

describe GuessingGame do
  before do
    @test_game = GuessingGame.new("aadvark")
  end

  it "Should return array of revealed letters" do
    expect(@test_game.revealed_letters).to eq(["-", "-", "-", "-", "-", "-", "-", "-"])
  end

  it "Should find all occurrences of letter \"a\" in aadvark" do
    expect(@test_game.search_for_letter("a")).to eq(["a", "a", "-", "-", "-", "a", "-", "-"])
  end

  it "Should say that letter wasn't found" do
    expect(@test_game.search_for_letter("b")).to eq("I'm sorry, but your letter wasn't found")
  end


# guess_word tests, method returns true or false
  it "Should say that guessed word is true" do
    expect(@test_game.guess_word("aadvark")).to eq(true)
  end

  it "Should say that guessed word is false" do
    expect(@test_game.guess_word("quizzed")).to eq(false)
  end

  it "Should say that guessed word is true" do
    expect(GuessingGame.new("schadenfreude").guess_word("schadenfreude")).to eq(true)
  end

end
