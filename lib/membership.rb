class Membership

  @@all = []
  attr_reader :cost, :lifter, :gym

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter

    @@all << self 
  end

  def self.all
    @@all 
  end 

end
