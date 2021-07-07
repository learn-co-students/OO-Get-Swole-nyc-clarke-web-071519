class Lifter
  attr_reader :name, :lift_total
  @@all = [ ] 

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  def self.all 
    @@all
  end
  def memberships
    Membership.all.select { |membership| membership.lifter == self }
end

  def gym
    Memberships.map { |membership| membership.gym}
  end
  
  def self.average_lift
     lift_totals = Lifter.all.map{|lifter| lifter.lift_total}
     lift_totals.reduce {|result, n| result + n} / lift_totals.length.to_f
  end
  
     def membership_cost
       total_membership_cost = memberships.map {|membership| membership.cost}
         total_membership_cost.reduce {|total, cost| total + cost}
     end
     
  def add_membership(gym, membership_cost)
    new_membership = Membership.new(membership_cost)
    new_membership.lifter = self
    new_membership.gym = gym
  end
end


