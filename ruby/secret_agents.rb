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
    until len == counter
        if encrypted_string[counter] == " "
            next
        end
        encrypted_string[counter]
    end
end

