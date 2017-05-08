require_relative 'guessing_game'

describe GuessingGame do
  before(:all) do
    @test_game = GuessingGame.new("aardvark")
  end

  it "returns @revealed_letters array" do
    expect(@test_game.revealed_letters).to eq(["-", "-", "-", "-", "-", "-", "-", "-"])
  end

  it "finds all occurrences of letter \"a\" in aardvark" do
    expect(@test_game.guess_a_letter("a")).to eq(["a", "a", "-", "-", "-", "a", "-", "-"])
  end

  it "finds all occurrences of letter \"v\" in aardvark" do
    expect(@test_game.guess_a_letter("v")).to eq(["a", "a", "-", "-", "v", "a", "-", "-"])
  end

  it "finds all occurrences of letter \"r\" in aardvark" do
    expect(@test_game.guess_a_letter("r")).to eq(["a", "a", "r", "-", "v", "a", "r", "-"])
  end

  it "returns @revealed_letters array" do
    expect(@test_game.guess_a_letter("b")).to eq(["a", "a", "r", "-", "v", "a", "r", "-"])
  end

  it "returns @revealed_letters array" do
    expect(@test_game.guess_a_letter("d")).to eq(["a", "a", "r", "d", "v", "a", "r", "-"])
  end

  it "returns guessed word is true" do
    expect(@test_game.guess_a_word("quizzers")).to eq(false)
  end
  
  it "returns guessed word is true" do
    expect(@test_game.guess_a_word("grizzled")).to eq(false)
  end

  it "returns @revealed_letters array" do
    expect(@test_game.guess_a_letter("k")).to eq(["a", "a", "r", "d", "v", "a", "r", "k"])
  end

  it "returns won game is true" do
    expect(@test_game.won_game).to eq(true)
  end
end

describe GuessingGame do
  before do
    @test_game = GuessingGame.new("schadenfreude")
  end

  it "returns guessed word is false" do
    expect(@test_game.guess_a_word("acetaminophen")).to eq(false)
  end

  it "returns guessed word is true" do
    expect(@test_game.guess_a_word("schadenfreude")).to eq(true)
  end
end
