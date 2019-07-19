class Membership
  attr_accessor :gym, :lifter
  attr_reader :cost

  @@all = []

  def initialize(cost)
    @cost = cost
    @@all << self
  end

  #Get a list of all memberships
  def self.all
    @@all
  end

end
