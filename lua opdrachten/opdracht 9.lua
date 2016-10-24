require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed = 0.99

u = 9

for i = 1 , 5 do
  robot_arm:grab()
  for h = 1 , u do
    robot_arm:move_right()
  end
  robot_arm:drop()
  u = u-1
  for h = 1 , u do
    robot_arm:move_left()
  end
  u = u-1
end