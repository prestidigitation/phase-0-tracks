# Pseudocode
# 
# Prompt user_one to input a word or phrase to guess
# Initialize guessed_correctly variable to keep track of overall game state
# Initialize revealed_letters array of "-" characters equal to length of input word
# Initialize maximum_guesses variable equal to the length of input word
# WHILE guess_correctly is false
#   Prompt user_two for letter to input
#   Iterate through revealed_letters array, replacing dashes with respective input letter (requires comparing revealed_letters to the original input word)
#   Inform user if their letter wasn't found
#   

class GuessingGame
  attr_accessor :revealed_letters
  attr_reader :guessed_correctly

  def initialize(target_word)
    @guessed_correctly = false
    @target_word = target_word
    @maximum_guesses = @target_word.length / 2
    @revealed_letters = Array.new(@target_word.length) { "-" }
  end

  def search_for_letter(letter)
    letter_found = false
    @target_word.length.times do |i|
      if @target_word[i] == letter
        @revealed_letters[i] = letter
        letter_found = true
      end
    end
    if letter_found
      return @revealed_letters
    else
      "I'm sorry, but your letter wasn't found"
    end
  end

  def guess_word(word)
    if word == @target_word
      @guessed_correctly = true
    end
    @guessed_correctly
  end

end
