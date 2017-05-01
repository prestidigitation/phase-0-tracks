## Capitalize language-specific keywords (IF, ELSE, BREAK, etc.).
## Indent pseudocode as you would your actual code (code blocks, conditionals, etc.)


# Pseudocode
# Ask user to input data using gets.chomp

client_info = {}

p "Enter your name:"
client_info[:client_name] = gets.chomp
p "Enter your age:"
client_info[:age] = gets.chomp.to_i
p "Enter your email:"
client_info[:email] = gets.chomp
p "Enter your phone number"
client_info[:phone_number] = gets.chomp
p "Enter number of children:"
client_info[:number_of_children] = gets.chomp.to_i
p "What is your favorite shade of blue?"
client_info[:design_style] = gets.chomp

client_info.each do |k, v|
    puts "#{k}: #{v}"
end

