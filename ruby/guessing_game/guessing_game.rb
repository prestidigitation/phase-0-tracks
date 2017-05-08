### PSEUDOCODE ###
# 
# Prompt user_one to input a word or phrase to guess
# Initialize won_game variable to keep track of overall game state
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
  attr_reader :won_game, :guess_number, :maximum_guesses, :revealed_letters, :guessed_letters, :guessed_words

  def initialize(target_word)
    @won_game = false
    @target_word = target_word
    @guess_number = 0
    @maximum_guesses = @target_word.length
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

    if letter_found
      if !@revealed_letters.include?("-")
        @won_game = true
      end
      return @revealed_letters
    else
      puts "I'm sorry, but your letter wasn't found."
      @revealed_letters
    end
  end


  # Takes a word string as an input and returns @won_game boolean
  def guess_a_word(word)
    # Repeated guesses don't count against the user
    if !guessed_words.include?(word)
      @guess_number += 1
      @guessed_words << word
    end

    if word == @target_word
      @won_game = true
    end
    
    @won_game
  end
end


### DRIVER CODE ###
# Prompt user_one to enter a word that must be composed of English letters, no characters
def input_correct?(input)
  correct = true
  if /^[a-zA-Z]+$/.match(input) == nil
    puts "Only English letters are allowed, no special/foreign characters or spaces!"
    correct = false
  end
  correct
end

input = ""
loop do
  puts "Player \#1, please enter a word for player \#2 to guess:"
  input = gets.chomp.downcase
  if !input_correct?(input)
    next
  end
  break
end

game = GuessingGame.new(input)

while !game.won_game && game.guess_number < game.maximum_guesses
  p game.revealed_letters
  loop do
    puts 
    puts "Guessed letters: #{game.guessed_letters}"
    puts "Guessed words: #{game.guessed_words}"
    puts "Would you like to guess a letter or the entire word (l/w)?"
    puts "Guesses left: #{game.maximum_guesses - game.guess_number}"
    input = gets.chomp.downcase
    if input == "l"
      letter_input = ""
      loop do
        puts "Enter a letter to guess:"
        letter_input = gets.chomp.downcase
        if !input_correct?(letter_input)
          next
        elsif letter_input.length != 1
          puts "You are only supposed to enter one letter!"
          next
        end
        break
      end
      game.guess_a_letter(letter_input)
    elsif input == "w"
      word_input = ""
      loop do
        puts "Enter a word to guess:"
        word_input = gets.chomp.downcase
        if !input_correct?(word_input)
          next
        end
        break
      end
      game.guess_a_word(gets.chomp.downcase)
    end
  end
end

if game.won_game
  puts "Congratulations! You won the game!"
else
  if game.guess_number >= game.maximum_guesses
    puts "You ran out of guesses!"
  end
  puts "You lost! You are a terrible player!"
end
