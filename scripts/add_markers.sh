#!/bin/sh
export TURTLEBOT_3D_SENSOR="kinect"
export ROBOT_INITIAL_POSE="-x 0.0 -y 5.5 -Y 1.571"
xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/catkin_ws/src/World/MyWorld.world" &
sleep 5
xterm  -e  " roslaunch turtlebot_navigation amcl_demo.launch map_file:=/home/workspace/catkin_ws/src/map/MyWorld.yaml" & 
sleep 5
xterm  -e  " roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5
xterm  -e  " rosrun add_markers add_markers "
