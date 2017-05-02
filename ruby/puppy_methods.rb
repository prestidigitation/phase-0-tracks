class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    counter = 0
    until counter == n
      counter += 1
      p "Woof"
    end
  end

  def roll_over
    p "rolls over"
  end

  def dog_years(n)
    d_years = n * 7
    p d_years
  end

  def dog_paw
    p "dog lifts paw"
  end
end

# class Kitten

#   def initialize(name)
#     puts "Initializing new kitten instance ..."
#     @kitten_name = name
#   end
# end

# kitten_array = [
#   "Wheeler",
#   "Harlan",
#   "Mullo",
#   "Brinley",
#   "Alonzo",
#   "Sigebryht",
#   "Sapphire",
#   "Teeters",
#   "Xander",
#   "August"
# ]

#Driver Code

scruffy = Puppy.new
p scruffy.fetch("ball")
p scruffy.speak(2)
p scruffy.roll_over
p scruffy.dog_years(5)
p scruffy.dog_paw

# kitten_array.each do |kitty_var, kitty_name|
#   kitty_var = Kitten.new(kitty_name)
# end
