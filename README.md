# drone

build an application to fly a drone with the following Requirements:

drone has n engines
drone has one gyroscope
drone has one orientation sensor
orientation sensor provides the pitch and the roll
gyroscope has 3 vectors (x, y ,z) and provides you the velocity on each of these vectors
an engine has a power indicator from 0 to 100
an engine has a status (off, on)
the drone has a status (off, hovering, moving)
for simplicity sake:

the drone has 4 engines
the pitch is aligned to the x axis
the roll is aligned to the y axis
methods to implement:

take_off(take the drone in the air)
move_[forward, left, right, back, up, down]
stabilize(makes the drone hover)
status(gives the current status of the drone)
land(stabilizes and goes down at reduce speed)

if an engine breaks ( goes off ), the drone will send a distress signal and start landing (use STDOUT for distress signal)

if the drones fails to take off it sends a distress signal (use STDOUT for distress signal)

If I tap the drone with my hand it should correct itself and hover instead of crashing
