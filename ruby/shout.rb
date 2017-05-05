# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end
# end


# ### Driver code
# p Shout.yell_angrily("Bob Saget")
# p Shout.yelling_happily("It's my birthday")


module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Neighbor
  include Shout
end

class Teacher
  include Shout
end

### Driver code
nextdoor_neighbor = Neighbor.new
p nextdoor_neighbor.yell_angrily("You parked your car in front of my driveway")
dbc_teacher = Teacher.new
p dbc_teacher.yelling_happily("Great work on this assignment")
