# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "zom".insert(1, "o")
# => “zoom”

puts "enhance".center(15)
puts "enhance".ljust(11).rjust(15)
puts "enhance".insert(0, "    ").insert(11, "    ")
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".insert(9, " suspects")
puts "the usual" << " suspects"
puts "the usual".concat(" suspects")
puts "the usual".ljust(18, " suspects")
#=> "the usual suspects"

puts " suspects".insert(0, "the usual")
puts " suspects".rjust(18, "the usual")
puts " suspects".prepend("the usual")
# => "the usual suspects"

puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".chomp("r")
puts "The case of the disappearing last letter".slice(0, 39)
puts "The case of the disappearing last letter"[0, 39]
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".slice(1, 38)
puts "The mystery of the missing first letter"[1, 38]
puts "The mystery of the missing first letter"[0] = ""
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze(" ")
puts "Elementary,    my   dear        Watson!".gsub(/\s+/, " ").strip
puts "Elementary,    my   dear        Watson!".split(" ").join(" ")
# => "Elementary, my dear Watson!"

puts "z".ord
puts "z".replace("122").to_i
puts "z".sum
"z".each_byte do |c|
    puts c
end
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4

