KORTEX_ROS_DIR="."

source $KORTEX_ROS_DIR/devel/setup.bash
roslaunch kortex_gazebo spawn_kortex_robot.launch gripper:=robotiq_2f_85 z0:=0.04 vision:=false

