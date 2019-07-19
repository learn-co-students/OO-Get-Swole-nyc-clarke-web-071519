class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #Get a list of all gyms
  def self.all
    @@all
  end

  #Get a list of all memberships at a specific gym
  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  #Get a list of all the lifters that have a membership to a specific gym
  def lifters
    memberships.map {|membership| membership.lifter}
  end

  #Get a list of the names of all lifters that have a membership to that gym
  def lifter_names
    lifters.map {|lifter| lifter.name}
  end

  #Get the combined lift total of every lifter that has a membership to that gym
  def lifters_lift_total
    gym_lift_totals = lifters.map {|lifter| lifter.lift_total}
    gym_lift_totals.reduce {|total, lift_total| total + lift_total}
  end

end
