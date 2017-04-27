# 1. Swap the first and last name.
#    - Split name string.
#    - Recombine name string backwards with " " spacer character.
# 2. Change all vowels to the next vowel, and all consonants to the next consonant
#    in the alphabet.
#    - Split name string into characters.
#    - Iterate through characters and check to see if vowel.
#    - If vowel, switch to next vowel.
#    - If not vowel, switch to next consonant.
#

def encrypt(str)

    def name_swapper(str)
        str = str.split()
        str[0], str[1] = str[1], str[0]
        str.join(" ")
    end

    # p name_swapper("Bob Henry")
    # p name_swapper("Alexander Rowland")


    def shift(str)
        cap_vowels = "AEIOUA"
        lower_vowels = "aeioua"
        cap_consonants = "BCDFGHJKLMNPQRSTVWXYZB"
        lower_consonants = "bcdfghjklmnpqrstvwxyzb"
        letter_array = []
        shifted_string = ""

        str = str.split
        letter_array += str[0].split("")
        letter_array += [" "]
        letter_array += str[1].split("")
        letter_array.each do |letter|
            if cap_vowels.include? letter
                shifted_string += cap_vowels[cap_vowels.index(letter) + 1]
            elsif lower_vowels.include? letter
                shifted_string += lower_vowels[lower_vowels.index(letter) + 1]
            elsif cap_consonants.include? letter
                shifted_string += cap_consonants[cap_consonants.index(letter) + 1]
            elsif lower_consonants.include? letter
                shifted_string += lower_consonants[lower_consonants.index(letter) + 1]
            elsif letter == " "
                shifted_string += " "
            end
        end
        shifted_string
    end
    shift(name_swapper(str))
end

# p encrypt("Alexander Rowland")
# p encrypt("Roberto Gonzales")
# p encrypt("Carmen Sandiego")
# p encrypt("Uma Thurman")
# p encrypt("Felicia Torres")

### Driver Code
encrypted_names = []

loop do
    puts "Enter a name that you would like to encrypt (type 'quit' to exit): "
    input = gets.chomp
    if input == "quit"
        break
    else
        encrypted_string = encrypt(input)
        encrypted_names << encrypted_string
        puts encrypted_string
    end
end

puts "\nEncrypted names: "
puts encrypted_names
