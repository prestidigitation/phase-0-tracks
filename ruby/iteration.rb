def own_method
	puts "This is the first status!"
	yield
	puts "This is the last status!"
end

own_method { 
	puts "This is the middle status!" 
}

array = ['red', 'yellow', 'blue', 'green', 'gold']

hash = {
	harrison_ford: "Han Solo",
	kurt_russel: "Snake Pliskin",
	nicholas_cage: "That guy from Moonstruck",
	marky_mark: "Boogie Nights"
}

hash2 = {
	"Harrison Ford" => "Han Solo",
	"Kurt Russel" => "Snake Pliskin",
	"Nicholas Cage" => "That guy from Moonstruck",
	"Marky Mark" => "Boogie Nights"
}

puts array
array.each do |i|
	puts i
end
puts array

array.map! do |i|
	i.upcase
end
puts array

puts hash2
hash2.each do |i|
	puts "#{i[0]} is known for playing #{i[1]}."
end
puts hash2

array_test = [10, 15, 20, 25, 30, 35, 40, 45, 50]
array_test2 = [10, 15, 20, 25, 30, 35, 40, 45, 50]
array_test3 = [10, 15, 20, 25, 30, 35, 40, 45, 50]
array_test4 = [10, 15, 20, 25, 30, 35, 40, 45, 50]

#Release 2 array section
puts "R2 Q1"
puts array_test.delete_if { |x| x % 2 == 1 }
puts array_test
puts "R2 Q2"
puts array_test2.keep_if { |x| x > 25 }
puts array_test2
puts "R2 Q3"
puts array_test3.select { |x| x > 25 }
puts array_test3
puts "R2 Q4"
puts array_test4.drop_while { |x| x < 25 }
puts array_test4

hash_test = {
	one: 1,
	two: 2,
	three: 3,
	four: 4
}
hash_test2 = {
	one: 1,
	two: 2,
	three: 3,
	four: 4
}
hash_test3 = {
	one: 1,
	two: 2,
	three: 3,
	four: 4
}
hash_test4 = {
	one: 1,
	two: 2,
	three: 3,
	four: 4
}

puts "R2 Q1 hash"
puts hash_test.delete_if { |x, y| y % 2 == 1 }
puts hash_test

puts "R2 Q2 hash"
puts hash_test2.keep_if { |x, y| y > 2 }
puts hash_test2

puts "R2 Q3 hash"
puts hash_test3.select { |x,y| x == :three }
puts hash_test3

puts "R2 Q4 hash"
puts hash_test4.reject { |x,y| y > 1 }
puts hash_test4
