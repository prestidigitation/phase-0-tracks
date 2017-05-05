class Santa

  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age
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

end

### DRIVER CODE

test_santa = Santa.new("male", "white")
p test_santa.celebrate_birthday
p test_santa.get_mad_at("Rudolph")
p test_santa.gender = "carrotkin"
p test_santa.age
p test_santa.ethnicity

# Pseudocode
# Initialize empty array to store Santa class instances
# Initialize gender array with gender identities stored as strings
# Initialize ethnicity array with ethnicities stored as strings
# Loop X number of times
#   Initialize new instance of Santa class with random item from gender_array, santa_instance_array
#   Set age of new Santa instance to a random number between 0 and 140
#   Call all attributes of santa instance

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

1000000.times do |i|
  little_santa = Santa.new(gender_array.sample, ethnicity_array.sample)
  little_santa.age = rand(141)
  p little_santa.ethnicity
  p little_santa.gender
  p little_santa.age
  p little_santa.reindeer_ranking
end
