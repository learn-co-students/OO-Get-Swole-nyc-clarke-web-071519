# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

gym1 = Gym.new("gym1")
gym2 = Gym.new('gym2')

lifter1 = Lifter.new("joe", 40)
lifter2 = Lifter.new("hank", 70)

memb1 = Membership.new(25, gym1, lifter1)
memb2 = Membership.new(100, gym2, lifter2)
memb3 = Membership.new(100, gym2, lifter1)

# test code goes here

binding.pry

puts "Gains!"
