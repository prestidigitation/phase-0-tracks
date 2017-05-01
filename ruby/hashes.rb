## Capitalize language-specific keywords (IF, ELSE, BREAK, etc.)
## Indent pseudocode as you would your actual code (code blocks, conditionals, etc.)

# Pseudocode
# Initialize client_info hash.
# Prompt user to input name.
# Use gets.chomp to capture input name.
# Prompt user to input age.
# Use gets.chomp to capture input age, converting string to integer.
# Prompt user to input email.
# Use gets.chomp to capture input email.
# Prompt user to input phone number.
# Use gets.chomp to capture input phone number.
# Prompt user to input marriage status.
# User gets.chomp to capture input marriage status.
# Use UNTIL loop to nest conditional logic to capture y/n answer.
#   Use IF/ELSE conditional logic to convert y/n answer string to boolean.
# Prompt user to input number of children.
# Use gets.chomp to capture input number, converting string to integer.
# Loop through client_info hash using .each method.
#   Print out each key, value pair in client_info hash.
# Initialize input_key variable.
# Initialize input_value variable
# Use LOOP DO to nest code for prompting user to update client_info values.
#   Prompt user to input hash value to update or enter none.
#   Update input_key with gets.chomp.
#   Use IF to BREAK loop if input_key equals "none".
#   Convert input_key to a hash symbol.
#   Prompt user to input new value for chosen hash.
#   Use gets.chomp to capture new input value and store in input_value.
#   Use IF to check if input_key is "age" or "number_of_children".
#     Convert input_value to integer and update input_key with new value.
#   ELSIF input_key is equal to :married.
#     Use IF block to check if input_value is equal to "y"
#       Convert to 
# 
# Loop through client_info hash using .each method.
#   Print out each key, value pair in client_info hash.


client_info = {}

p "Enter your name:"
client_info[:client_name] = gets.chomp
p "Enter your age:"
client_info[:age] = gets.chomp.to_i
p "Enter your email:"
client_info[:email] = gets.chomp
p "Enter your phone number"
client_info[:phone_number] = gets.chomp
input = ""
until input == "y" || input == "n"
  p "Are you married (y/n)?"
  input = gets.chomp.downcase
end
if input == "y"
  client_info[:married] = true
else
  client_info[:married] = false
end
p "Enter number of children:"
client_info[:number_of_children] = gets.chomp.to_i
p "What is your preferred interior design style?"
client_info[:design_style] = gets.chomp

client_info.each do |k, v|
  puts "#{k}: #{v}"
end

input_key = ""
input_value = ""
loop do
  puts "If you want to change anything, type the name of category or \"none\" if everything looks good."
  input_key = gets.chomp
  if input_key == "none"
    break
  end
  input_key = input_key.to_sym
  puts "Enter the new value:"
  input_value = gets.chomp
  if input_key == :age || input_key == :number_of_children
    client_info[input_key] = input_value.to_i
  elsif input_key == :married
    if input_value == "y"
      client_info[:married] = true
    elsif input_value == "n"
      client_info[:married] = false
    else
      client_info[:married] = nil
    end
  else
    client_info[input_key] = input_value
  end
end

client_info.each do |k, v|
    puts "#{k}: #{v}"
end
