class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self 
  end

  def self.all
    @@all
  end 


  def memberships
    Membership.all.select do |memb|
      memb.gym == self 
    end 
  end 

  def lifters 
    memberships.map do |memb|
      memb.lifter
    end 
  end 

  def lifter_name
    lifters.map do |lift|
      lift.name
    end 
  end 

  def lift_total
    total = 0
    lifters.each do |lift|
      total += lift.lift_total
    end 
    total
  end 

end
