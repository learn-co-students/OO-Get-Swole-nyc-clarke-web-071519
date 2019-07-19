class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  
  #Get a list of all lifters
  def self.all
    @@all
  end

  #Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  #Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    memberships.map {|membership| membership.gym}
  end

  #Get the average lift total of all lifters
  def self.average_lift_total
    all_lift_totals = Lifter.all.map{|lifter| lifter.lift_total}
    all_lift_totals.reduce {|result, n| result + n} / all_lift_totals.length.to_f
  end

  #Get the total cost of a specific lifter's gym memberships
  def memberships_total_cost
    membership_costs = memberships.map {|membership| membership.cost}
    membership_costs.reduce {|total, cost| total + cost}
  end

  #Given a gym and a membership cost, sign a specific lifter up for a new gym
  def add_membership(gym, membership_cost)
    new_membership = Membership.new(membership_cost)
    new_membership.lifter = self
    new_membership.gym = gym
  end

end
