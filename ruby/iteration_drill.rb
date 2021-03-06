# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each do |item|
  print item + "*"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if array[i].downcase > array[i + 1].downcase
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

p bubble_sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def search_array_for_item(array, sought_item)
  found = false
  array.each do |item|
    if item == sought_item
      found = true
      break
    end
  end
  found
end

p search_array_for_item(zombie_apocalypse_supplies, "rations")
p search_array_for_item(zombie_apocalypse_supplies, "pistol")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def pare_down_supplies(array)
  new_array = []
  counter = 0
  while counter < 5
    new_array << array[counter]
    counter += 1
  end
  new_array
end

p pare_down_supplies(zombie_apocalypse_supplies)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

new_supplies_list = zombie_apocalypse_supplies | other_survivor_supplies
p new_supplies_list

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |key, value|
  print "#{key}-#{value}*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

temp_hash = {}
extinct_animals.each do |key, value|
  if value < 2000
    temp_hash[key] = value
  end
end
extinct_animals = temp_hash

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.each do |key, value|
  extinct_animals[key] = value - 3
end

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

has_cat = false
has_dodo = false
has_antelope = false
extinct_animals.each do |key, value|
  if key == "Andean Cat"
    has_cat = true
  elsif key == "Dodo"
    has_dodo = true
  elsif key == "Saiga Antelope"
    has_antelope = true
  end
end
puts "The Andean Cat is extinct: #{has_cat}."
puts "The Dodo is extinct: #{has_dodo}."
puts "The Saiga Antelope is extinct: #{has_antelope}."

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

pigeon_data = extinct_animals.assoc("Passenger Pigeon")
extinct_animals.delete(pigeon_data[0])
p pigeon_data
p extinct_animals
