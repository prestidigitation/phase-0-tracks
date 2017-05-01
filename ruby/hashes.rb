# Pseudocode
# Initialize client_info hash.
# Prompt user to input name.
# Use gets.chomp to capture input name.
# Prompt user to input age.
# Use gets.chomp to capture input age, converting string to integer.
# Prompt user to input number of children.
# Use gets.chomp to capture input number, converting string to integer.
# Initialize empty family member name array.
# Use LOOP DO to prompt user for multiple family member name inputs.
#   Prompt user to input family member names.
#   IF input is equal to "done" BREAK out of loop.
#   Append input string to family_member_list array in client_info hash.
# Prompt user to input email.
# Use gets.chomp to capture input email.
# Prompt user to input phone number.
# Use gets.chomp to capture input phone number.
# Prompt user to input marriage status.
# User gets.chomp to capture input marriage status.
# Use UNTIL loop to nest conditional logic to capture y/n answer.
#   Use IF/ELSE conditional logic to convert y/n answer string to boolean.
# Loop through client_info hash using .EACH DO method.
#   Print out each key, value pair in client_info hash.
# Initialize input_key variable.
# Initialize input_value variable.
# Use LOOP DO to nest code for prompting user to update client_info values.
#   Prompt user to input hash value to update or enter none.
#   Update input_key with gets.chomp.
#   Use IF to BREAK loop if input_key equals "none".
#   Convert input_key to a hash symbol.
#   IF input_key does not equal :family_member_list
#     Prompt user to input new value for chosen hash.
#   Use gets.chomp to capture new input value and store in input_value.
#   Use IF to check if input_key is "age" or "number_of_children".
#     Convert input_value to integer and update input_key with new value.
#   ELSIF input_key is equal to :family_member_list
#     Loop through :family_member_list array using .EACH DO method.
#       Prompt user to remove current family member name.
#       IF input is equal to "y", remove name from array.
#     LOOP DO to prompt user for adding addition family member names.
#       Initialize empty input string variable.
#       IF input is equal to "n", then BREAK.
#       Append user input string to family_member_list array. 
#   ELSIF input_key is equal to :married.
#     Use IF block to check if input_value is equal to "y".
#       Set value of :married to true.
#     ELSIF input_value is equal to "n".
#       Set value of :married to false.
#     ELSE set input_value to nil.
#   ELSE set client_info input_key to input_value string.
# Loop through client_info hash using .EACH DO method.
#   Print out each key, value pair in client_info hash.


client_info = {}
puts "Enter your name:"
client_info[:client_name] = gets.chomp
puts "Enter your age:"
client_info[:age] = gets.chomp.to_i
puts "Enter number of children:"
client_info[:number_of_children] = gets.chomp.to_i
puts "Enter the names of other immediate family members (type \"done\" when finished):"
client_info[:family_member_list] = []
loop do
  input = gets.chomp
  if input == "done"
    break
  end
  client_info[:family_member_list] << input
end
puts "Enter your email:"
client_info[:email] = gets.chomp
puts "Enter your phone number"
client_info[:phone_number] = gets.chomp
input = ""
until input == "y" || input == "n"
  puts "Are you married (y/n)?"
  input = gets.chomp.downcase
end
if input == "y"
  client_info[:married] = true
else
  client_info[:married] = false
end
puts "What is your preferred interior design style?"
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
  if input_key != :family_member_list
    puts "Enter the new value:"
    input_value = gets.chomp
  end

  if input_key == :age || input_key == :number_of_children
    client_info[input_key] = input_value.to_i
  elsif input_key == :family_member_list
    client_info[:family_member_list].each do |item|
      input = ""
      puts "Would you like to remove #{item} from the list (y/n)?"
      input = gets.chomp
      if input == "y"
        client_info[:family_member_list] -= [item]
      end
    end
    loop do
      input = ""
      puts "Would you like to add a family member to the list (y/n)?"
      input = gets.chomp
      if input == "n"
        break
      elsif input == "y"
        puts "Enter a name:"
        client_info[:family_member_list] << gets.chomp
      else
        next
      end
    end
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
