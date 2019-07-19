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
  
end
