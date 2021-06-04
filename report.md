Greg Attra
CS 5335 Prof. Platt
04/16/2021

# Final Report

## Summary
For the final project, I built a four-wheeled robot arm which picks up items and returns them to a dropbox location. Here is a short video of the robot in action.

## Implementation

### Simulator
I used the Unity simulator within which to run my experiments. Unity uses Nvidia’s PhysX engine. Unity also provides packages for computer vision, machine learning and reinforcement learning, and communication via ROS. The Unity asset store provides realistic realistic 3D renderings of common objects, which may enable me to use pre-trained neural networks to handle detection and segmentation.

### Backend
I used ROS as the backend system for controlling the robot. The overall system can be broken into four main behaviors:
1. Go-to-goal (target item position)
2. Grasp item
3. Go-to-goal (dropbox position)
4. Drop item

*Go-to-goal (GTG) - Target Item*

The `goToGoalBehavior` is instantiated with a reference to a `targetPoseSubscriber` and a `basePoseSubscriber`, which are populated by ROS Publishers in the Unity Simulation.

The `targetPoseSubscriber` provides the world position of the target item and its angle `w_T` relative to the robot's orientation. The `basePoseSubscriber` provides the world position and orientation `w_R` of the mobile base. The orientation variables `w_T` and `w_R` are used by the PID controller in the go-to-goal behavior to regulate the angle by which to rotate the robot at that timestep.

The GTG behavior publishes the `velocity` and `angle` values to the `cmd_vel` topic. In the simulator, the `velocity`

