def interview
    
    puts "How many employees would you like to process?"
    employees = gets.chomp.to_i
    counter = 0
    until counter == employees
        counter += 1
    
        puts "What is your name?"
        name = gets.chomp
        puts "How old are you?"
        age = gets.chomp.to_i
        puts "What year were you born?"
        year_of_birth = gets.chomp.to_i
        wants_garlic_bread = ""
        loop do
            puts "Our company cafeteria serves garlic bread. Should we order some for you (y/n)? "
            wants_garlic_bread = gets.chomp
            if wants_garlic_bread == "y"
                wants_garlic_bread = true
                break
            elsif wants_garlic_bread == "n"
                wants_garlic_bread = false
                break
            end
        end
        wants_health_insurance = ""
        loop do
            puts "Would you like to enroll in the company's health insurance (y/n)?"
            wants_health_insurance = gets.chomp
            if wants_health_insurance == "y"
                wants_health_insurance = true
                break
            elsif wants_health_insurance == "n"
                wants_health_insurance = false
                break
            end
        end
        puts "Your name is #{name}."
        puts "You are #{age} years old."
        puts "You were born in #{year_of_birth}."
        puts "You want garlic bread: #{wants_garlic_bread}."
        puts "You would like to enroll in company health insurance: #{wants_health_insurance}"
    
        age_verified = false
        if 2017 - year_of_birth == age || 2017 - year_of_birth == age + 1
            age_verified = true
        end
        puts "Age verified: #{age_verified}"
    
        result = ""
        if age_verified && (wants_garlic_bread || wants_health_insurance)
            result = "Probably not a vampire."
        end
        if !age_verified && (!wants_garlic_bread || !wants_health_insurance)
            result = "Probably a vampire."
        end
        if !age_verified && !wants_garlic_bread && !wants_health_insurance
            result = "Almost certainly a vampire."
        end
        if name == "Drake Cula" || name == "Tu Fang"
            result = "Definitely a vampire."
        end
        if result == ""
            result = "Results inconclusive."
        end
        
        puts result
    end
end

interview
