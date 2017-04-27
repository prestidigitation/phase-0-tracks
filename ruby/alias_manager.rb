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

def name_swapper(str)
    str = str.split()
    str[0], str[1] = str[1], str[0]
    str.join(" ")
end

p name_swapper("Bob Henry")
p name_swapper("Alexander Rowland")


def encrypt(str)
    vowels = "aeiou"
    letter_array = []
    encrypted_string = ""

    str = str.split
    letter_array += str[0].split("")
    letter_array += str[1].split("")
    letter_array.each do |letter|
        encrypted_string += letter.next
    end
end

p encrypt("Alexander Rowland")
