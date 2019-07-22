class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self 
  end

  def self.all
    @@all 
  end 

  def memberships
    Membership.all.select do |memb|
      memb.lifter == self 
    end 
  end 

  def gyms
    memberships.map do |memb|
      memb.gym
    end 
  end 

  def self.lift_average 
    sum = 0
    num_people = 0
    Lifter.all.each do |lift|
      sum += lift.lift_total
      num_people += 1
    end 
    sum / num_people
  end 

  def gym_cost_total
    total_cost = 0
    memberships.each do |memb|
      total_cost += memb.cost
    end 
    total_cost
  end 

  def sign_me_up(gym, cost)
    Membership.new(cost, gym, self)
  end 


end
