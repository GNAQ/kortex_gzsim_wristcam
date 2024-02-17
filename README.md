# Simulate Kinova Gen3 wrist RGBDepth camera in Gazebo.

---

## Introduction

This is an experimental demo that added an RGBDepth wrist camera **in Gazebo simulation** for Kinova Gen3 robotic arm. This is currently [not being supported](https://github.com/Kinovarobotics/ros_kortex/issues/46) by Kinova official Kortex driver repository.

Meanwhile, it uses [AWS-RoboMaker-Warehouse](https://github.com/aws-robotics/aws-robomaker-small-warehouse-world) small warehouse world to enrich the simulation environment. You can replace it with any other world setup you desire.

## Run this demo

**Warn: Only tested on Ubuntu 20.04 - ROS noetic**

**Warn: Only tested on Ubuntu 20.04 - ROS noetic**

**Warn: Only tested on Ubuntu 20.04 - ROS noetic**

Clone the repo and keep this folder structure:

```plain
.
├── README.md
├── run_novision.sh
├── run.sh
└── src
	├── ros_kortex
	└── warehouse_world
```

Your working directory should be `**/kortex_gzsim_wristcam` corresponding to the `.` above.

Next, follow every step in official Kortex [installation guide](https://github.com/Kinovarobotics/ros_kortex?tab=readme-ov-file#installation), but skip these four lines:

```bash
mkdir -p catkin_workspace/src
cd catkin_workspace/src
git clone -b <branch-name> https://github.com/Kinovarobotics/ros_kortex.git
cd ../
```

Next, you can edit and run `./run.sh` or `./run_novision.sh` to launch Gazebo with a simulated wrist RGBDepth camera. You can also type these commands in a terminal by hand.

To view color and depth stream by our eyes, add an `Image` widget in Rviz and select a proper image topic using the dropdown list. 

You can also check Gazebo Classic tutorials:

- [Tutorial: Using Gazebo plugins with ROS](https://classic.gazebosim.org/tutorials?tut=ros_gzplugins)

- [Create a Video with a Camera](https://classic.gazebosim.org/tutorials?tut=camera_save)

## Replace the gazebo world

To simulate with the real **`EmptyWorld`**, edit `./src/kortex_gazebo/launch/spawn_kortex_robot.launch`, Line `34`, change `start_gazebo_warehouse.launch` to `start_gazebo.launch`, or any other file you modified.

These hardcoded lines, including importing rgbd camera sensors, are not elegant at all. I will consider changing it somehow if I have spare time and mood.

## Other known bugs

The link of the RGBDepth camera sensor, `camera_link`, would not appear in Gazebo's left panel, but can be displayed correctly in Rviz after you add a `RobotModel`.