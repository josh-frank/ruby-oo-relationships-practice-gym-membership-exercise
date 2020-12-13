# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
crunch = Gym.new( "Crunch Fitness" )
planet_fitness = Gym.new( "Planet Fitness" )
golds = Gym.new( "Gold's Gym" )
ymca = Gym.new( "YMCA" )

rock = Lifter.new( "Dwayne Johnson", 300 )
arnold = Lifter.new( "Arnold Schwarzenegger", 350 )
flex = Lifter.new( "Flex Wheeler", 375 )
jack = Lifter.new( "Jack LaLane", 250 )
brock = Lifter.new( "Brock Lesnar", 400 )
hugh = Lifter.new( "Hugh Jackman", 275 )
dolph = Lifter.new( "Dolph Lundgren", 325 )
bruce = Lifter.new( "Bruce Lee", 250 )

rock.join_gym( crunch, 50 )
rock.join_gym( planet_fitness, 25 )
arnold.join_gym( golds, 75 )
arnold.join_gym( ymca, 75 )
flex.join_gym( golds, 100 )
flex.join_gym( planet_fitness, 100 )
jack.join_gym( ymca, 125 )
jack.join_gym( crunch, 125 )
brock.join_gym( planet_fitness, 150 )
brock.join_gym( crunch, 150 )
hugh.join_gym( golds, 175 )
hugh.join_gym( planet_fitness, 175 )
dolph.join_gym( golds, 200 )
dolph.join_gym( crunch, 200 )
bruce.join_gym( planet_fitness, 50 ) 
bruce.join_gym( ymca, 50 ) 

binding.pry
puts "Gains!"
