### PSEUDOCODE ###
# 
# Prompt user_one to input a word or phrase to guess
# Initialize guessed_correctly variable to keep track of overall game state
# Initialize revealed_letters array of "-" characters equal to length of input word
# Initialize maximum_guesses variable equal to the length of input word
# Initialize guess_number variable to store number of guesses user_two has made
# Initialize guessed_letters hash to make sure repeat guesses don't count
# WHILE guess_correctly is false and guess_number is less than maximum_guesses 
#   Prompt user for letter to input or to guess the entire word
#   Iterate through revealed_letters array, replacing dashes with respective input letter (requires comparing revealed_letters to the original input word)
#   Inform user if their letter wasn't found
# Tell user they have won if guess_correctly is true
# Tell user they have lost if guess_number >= maximum_guesses

class GuessingGame
  attr_reader :guessed_correctly, :guess_number, :maximum_guesses, :revealed_letters, :guessed_letters, :guessed_words

  def initialize(target_word)
    @guessed_correctly = false
    @target_word = target_word
    @guess_number = 0
    @maximum_guesses = @target_word.length / 2
    @revealed_letters = Array.new(@target_word.length) { "-" }
    @guessed_letters = []
    @guessed_words = []
  end

# Takes a letter string as an input and returns @revealed_letters array
  def guess_a_letter(letter)
    # Repeated guesses don't count against the user
    if !@guessed_letters.include?(letter)
      @guess_number += 1
      @guessed_letters << letter
    end

    letter_found = false

    @target_word.length.times do |i|
      if @target_word[i] == letter
        @revealed_letters[i] = letter
        letter_found = true
      end
    end

    puts "Guessed letters: #{@guessed_letters}"

    if letter_found
      if !@revealed_letters.include?("-")
        @guessed_correctly = true
      end
      return @revealed_letters
    else
      puts "I'm sorry, but your letter wasn't found"
      @revealed_letters
    end
  end


# Takes a word string as an input and returns @guessed_correctly boolean
  def guess_word(word)
    # Repeated guesses don't count against the user
    if !guessed_words.include?(word)
      @guess_number += 1
      @guessed_words << word
    end

    if word == @target_word
      @guessed_correctly = true
    end

    @guessed_correctly
  end
end


# ### DRIVER CODE ###
# puts "Player \#1, please enter a word for player \#2 to guess:"
# input = gets.chomp.downcase
# game = GuessingGame.new(input)
# while !game.guessed_correctly && game.guess_number <= game.maximum_guesses
#   p game.revealed_letters
#   puts "Would you like to guess a letter or the entire word (l/w)?"
#   loop do
#     input = gets.chomp.downcase
#     if input == "l"
#       puts "Enter a letter to guess:"
#       game.guess_a_letter(gets.chomp.downcase)
#       break
#     elsif input == "w"
#       puts "Enter a word to guess:"
#       game.guess_word(gets.chomp.downcase)
#       break
#     end
#   end
# end

# if game.guessed_correctly
#   puts "Congratulations! You won the game!"
# else
#   puts "You lost! You are a terrible player!"
# end

test_game = GuessingGame.new("aardvark")
test_game.guess_a_letter("a")
test_game.guess_a_letter("r")
test_game.guess_a_letter("v")
test_game.guess_a_letter("v")
test_game.guess_a_letter("v")
test_game.guess_a_letter("a")
test_game.guess_a_letter("d")
test_game.guess_a_letter("l")
test_game.guess_a_letter("k")
p test_game.revealed_letters
p test_game.guessed_correctly
