require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.99

robot_arm:move_right()
for i = 1 , 30 do
robot_arm:grab()
robot_arm:scan()
print(robot_arm:scan())
if robot_arm:scan() == "red" then
  for rechts = 1 , 8 do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for links = 1 , 7 do
    robot_arm:move_left()
  end
else
  robot_arm:drop()
  robot_arm:move_right()
end
end