class Santa

  attr_reader :gender, :ethnicity, :reindeer_ranking, :age
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking << reindeer_ranking.delete(reindeer_name)
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end

test_santa = Santa.new("male", "white")
# test_santa.speak
# test_santa.eat_milk_and_cookies("oreo")

# santa_array = []
# santa_array << Santa.new("agender", "black")
# p santa_array[0].ethnicity
# santa_array << Santa.new("female", "Latino")
# p santa_array[1].ethnicity
# santa_array << Santa.new("bigender", "white")
# p santa_array[2].ethnicity
# santa_array << Santa.new("male", "Japanese")
# p santa_array[3].ethnicity
# santa_array << Santa.new("female", "prefer not to say")
# p santa_array[4].ethnicity
# santa_array << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# p santa_array[5].ethnicity
# santa_array << Santa.new("N/A", "N/A")
# p santa_array[6].ethnicity

### PSEUDOCODE
# Initialize empty array to store Santa class instances
# Initialize gender array with gender identities stored as strings
# Initialize ethnicity array with ethnicities stored as strings
# Loop X number of times
#   Add random item from both gender_array and ethnicity_array to santa_instance_array

santa_array = []
gender_array = [
  "Agender / genderless",
  "Androgyne Bigender",
  "Genderqueer / Non-binary",
  "Gender bender",
  "Hijra",
  "Pangender",
  "Queer heterosexuality",
  "Third gender",
  "Trans man",
  "Trans woman",
  "Transmasculine",
  "Transfeminine",
  "Trigender",
  "Two-Spirit"]
ethnicity_array = [
  "Albanian",
  "Afrikaner",
  "Berber",
  "Zulu",
  "Czech",
  "Japanese",
  "Georgian",
  "Icelander",
  "Hindustani",
  "Javanese",
  "Malayali",
  "Mongol",
  "Parsi",
  "Romani",
  "Russian",
  "Shona",
  "Tibetan",
  "Uyghur"
]

20.times do 
  santa_array << Santa.new(gender_array.sample, ethnicity_array.sample)
end
p santa_array

p test_santa.celebrate_birthday
p test_santa.get_mad_at("Rudolph")
p test_santa.gender = "carrotkin"
p test_santa.age
p test_santa.ethnicity
