# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
# initialize instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls predicted_deaths and speed_of_spread with the instance variables as parameters
  def virus_effects
    number_of_deaths = predicted_deaths
    speed = speed_of_spread

    "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

  private

# generates a number of deaths, which is the population mulitplied by a factor/rate that depends on population_density. Number of deaths increase with population density.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

  end

# calculates speed of virus spread based on population_density. The higher the population density, the less time it will take the virus spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  puts VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end

#=======================================================================
# Reflection Section

# The top-level key/value pairs of the hash are defined using the implicit form, a.k.a. the hashrocket =>, and use strings as the keys. The nested hashes are using an alternative syntax that uses symbols as keys.

# require_relative imports code from another file, making accessible from the calling file. It's different from require in that it looks for the file in the same directory as the calling file, rather than looking through the ruby path, or needing an absolute file path.

# There are three main ways of iterating over a hash: using the methods each, each_key, and each_value. These methods are followed by a block that executes for every single item returned by the respect method, either every key/value pair, each key, or each value.

# The variables being used as parameters for the virus_effects method weren't necessary. After refactoring and eliminating unnecessary/unused parameters, it becomes clear that virus_effects is calling two other methods, each of which is directly changing instance variables rather than using variables passed in as arguments to the methods. When the only thing being mutated are instance variables that are defined in the initialize method, then parameters asking for such variables become superfluous.

# The concept I most solidified in this challenge was paying attention to whether parameters for a method are still needed after altering other parts of a method, such as calling instance variables instead of variables. The other concept that was driven home to me was the implicit return value being the LAST expression evaluated in a method, so if you have an if/elsif/else block, then a given branch will implicitly return a value if it is the last one to execute.