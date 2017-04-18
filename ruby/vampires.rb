def interview
    puts "What is your name?"
    name = gets.chomp
    puts "How old are you?"
    age = gets.chomp.to_i
    puts "What year were you born?"
    year_of_birth = gets.chomp.to_i
    puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    wants_garlic_bread = gets.chomp
    puts "Would you like to enroll in the company's health insurance?"
    wants_health_insurance = gets.chomp
    puts "Your name is #{name}."
    puts "You are #{age} years old."
    puts "You were born in #{year_of_birth}."
    puts "You want garlic bread: #{wants_garlic_bread}."
    puts "You would like to enroll in company health insurance: #{wants_health_insurance}"
end

interview
