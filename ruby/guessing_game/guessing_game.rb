# Pseudocode
# 
# Prompt user_one to input a word or phrase to guess
# Initialize guessed_correctly variable to keep track of overall game state
# WHILE guess_correctly is false
#   
# Initialize revealed_letters array of "-" characters equal to length of input word
# Initialize maximum_guesses variable equal to the length of input word
# Prompt user_two for letter to input
# Iterate through revealed_letters array, replacing dashes with respective input letter (requires comparing revealed_letters to the original input word)
# 

class GuessingGame
  attr_accessor :revealed_letters

  def initialize(word_to_guess)
    @word_to_guess = word_to_guess
    @maximum_guesses = @word_to_guess.length / 2
    @revealed_letters = Array.new(@word_to_guess.length) { "-" }
  end

  def search_for_letter(letter)
    @word_to_guess.length.times do |i|
      if @word_to_guess[i] == letter
        @revealed_letters[i] = letter
      end
    end
    @revealed_letters
  end 

end
