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

def encrypt(encrypted_string)
    len = encrypted_string.length
    counter = 0
    shifted_string = ""
    until len == counter
        if encrypted_string[counter] == " "
            shifted_string += " "
        else
            shifted_string += encrypted_string[counter].next
        end
        counter += 1
    end
    shifted_string
end

puts encrypt(gets.chomp)
