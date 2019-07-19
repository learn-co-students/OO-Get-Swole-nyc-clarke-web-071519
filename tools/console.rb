# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
goldsgym = Gym.new("Gold's Gym")
crunch = Gym.new("Crunch")
equinox = Gym.new("Equinox")
planetfitness = Gym.new("Planet Fitness")
rise = Gym.new("Rise by We")

tony = Lifter.new("Tony", 200)
sebastian = Lifter.new("Sebastian", 250)
greg = Lifter.new("Greg", 240)
aj = Lifter.new("AJ", 300)
alyssa = Lifter.new("Alyssa", 150)
andrew = Lifter.new("Andrew", 275)
hyo = Lifter.new("Hyo", 127)
jason = Lifter.new("Jason", 175)
meghann = Lifter.new("Meghann", 113)
valentino = Lifter.new("Valentino", 100)
varun = Lifter.new("Varun", 125)

tony.add_membership(planetfitness,15)
tony.add_membership(equinox,245)
sebastian.add_membership(planetfitness,10)
sebastian.add_membership(rise,100)
greg.add_membership(rise,95)
aj.add_membership(goldsgym,85)
aj.add_membership(crunch,90)
aj.add_membership(equinox,150)
alyssa.add_membership(crunch,50)
andrew.add_membership(goldsgym,90)
hyo.add_membership(rise,80)
jason.add_membership(planetfitness,25)
meghann.add_membership(rise,85)
valentino.add_membership(crunch,150)
varun.add_membership(equinox,200)

binding.pry

puts "Gains!"
