### PSEUDOCODE ###
# 
# Prompt user_one to input a word or phrase to guess
# Initialize guessed_correctly variable to keep track of overall game state
# Initialize revealed_letters array of "-" characters equal to length of input word
# Initialize maximum_guesses variable equal to the length of input word
# Initialize guess_number variable to store number of guesses user_two has made
# WHILE guess_correctly is false and guess_number is less than maximum_guesses 
#   Prompt user for letter to input or to guess the entire word
#   Iterate through revealed_letters array, replacing dashes with respective input letter (requires comparing revealed_letters to the original input word)
#   Inform user if their letter wasn't found
# Tell user they have won if guess_correctly is true
# Tell user they have lost if guess_number >= maximum_guesses

class GuessingGame
  attr_reader :guessed_correctly, :guess_number, :maximum_guesses, :revealed_letters

  def initialize(target_word)
    @guessed_correctly = false
    @target_word = target_word
    @guess_number = 0
    @maximum_guesses = @target_word.length / 2
    @revealed_letters = Array.new(@target_word.length) { "-" }
  end

  def search_for_letter(letter)
    @guess_number += 1
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
    @guess_number += 1
    if word == @target_word
      @guessed_correctly = true
    end
    @guessed_correctly
  end

end

### DRIVER CODE ###
puts "Player \#1, please enter a word for player \#2 to guess:"
input = gets.chomp.downcase
game = GuessingGame.new(input)
while !game.guessed_correctly && game.guess_number <= game.maximum_guesses
  p game.revealed_letters
  puts "Would you like to guess a letter or the entire word (l/w)?"
  loop do
    input = gets.chomp.downcase
    if input == "l"
      puts "Enter a letter to guess:"
      game.search_for_letter(gets.chomp.downcase)
      break
    elsif input == "w"
      puts "Enter a word to guess:"
      game.guess_word(gets.chomp.downcase)
      break
    end
  end
end

if game.guessed_correctly
  puts "Congratulations! You won the game!"
else
  puts "You lost! You are a terrible player!"
end
