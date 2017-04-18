## encrypt method
#  Iterate through string
#  Change character in current index to next character
#    - Spaces remain unaffected
#
## decrypt method
#  Iterate through string
#  Change character in current index to previous character (using negative indexing)
#    - Spaces remain unaffected
#

def encrypt(string)
    len = string.length
    counter = 0
    encrypted_string = ""
    until len == counter
        if string[counter] == " "
            encrypted_string += " "
        elsif string[counter] == "z"
            encrypted_string += "a"
        else
            encrypted_string += string[counter].next
        end
        counter += 1
    end
    encrypted_string
end


def decrypt(encrypted_string)
    len = encrypted_string.length
    counter = 0
    decrypted_string = ""
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    until len == counter
        if encrypted_string[counter] == " "
            decrypted_string += " "
        else
            decrypted_string += alphabet[alphabet.index(encrypted_string[counter]) - 1]
        end
        counter += 1
    end
    decrypted_string
end

# puts decrypt(gets.chomp)
# puts encrypt(gets.chomp)

puts decrypt(encrypt("swordfish"))

# The ruby interpreter runs the innermost method first (encrypt in this case) 
# before running decrypt, so the output of the encrypt method is being used as 
# the input for the decrypt method.
# 

