module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end


### Driver code

p Shout.yell_angrily("Bob Saget")
p Shout.yelling_happily("It's my birthday")
