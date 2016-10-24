require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.99

robot_arm:move_right()
for i = 1 , 8 do
robot_arm:grab()

robot_arm:scan()
print(robot_arm:scan())
if robot_arm:scan() == "white" then
  robot_arm:move_right()
  robot_arm:drop()
  robot_arm:move_right()
else
  robot_arm:drop()
  robot_arm:move_right()
end
end