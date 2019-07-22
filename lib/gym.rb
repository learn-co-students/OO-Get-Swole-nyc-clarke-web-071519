class Gym
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def memberships
   Membership.all.select {|membership| membership.gym == self}
  end
  
  def lifters
    Membership.all.map { |membership| membership.lifter} 
end

  def lifter_names
    lifters.map { |lifter| lifter.name}
  end
  
  def lift_total
    gym_lift_totals = lifters.map {|lifter| lifter.lift_total}
    gym_lift_totals.reduce {|total, lift_total| total + lift_total}
  end

end
