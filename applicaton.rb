require_relative 'lib/drone'

drone = Drone.new(engines: 4)

puts drone.status
drone.take_off
puts drone.status
drone.move_forward
drone.stabilize
puts drone.status
drone.land
puts drone.status
