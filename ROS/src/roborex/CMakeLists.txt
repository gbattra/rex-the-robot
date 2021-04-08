cmake_minimum_required(VERSION 3.0.2)
project(roborex)
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  geometry_msgs
  message_generation
)

catkin_python_setup()

add_message_files( DIRECTORY msg )
add_service_files( DIRECTORY srv )

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
 INCLUDE_DIRS src
 CATKIN_DEPENDS roscpp rospy message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  src/library
)

add_library(${PROJECT_NAME}_lib
  src/library/subscribers.h
  src/library/behaviors.h
  src/library/pid.h
  src/library/publishers.h
  src/library/clients.h
  src/library/basePoseSubscriber.cpp
  src/library/targetPoseSubscriber.cpp
  src/library/gripperGoalPoseSubscriber.cpp
  src/library/armPoseSubscriber.cpp
  src/library/cmdVelPublisher.cpp
  src/library/goToGoalBehavior.cpp
  src/library/graspTargetBehavior.cpp
  src/library/trajectoryPlannerClient.cpp
  src/library/pid.cpp
)

add_executable(${PROJECT_NAME}_base_pose_subscriber src/nodes/basePoseSubscriberNode.cpp)
target_link_libraries(${PROJECT_NAME}_base_pose_subscriber
  ${catkin_LIBRARIES}
  ${PROJECT_NAME}_lib
)
add_dependencies(${PROJECT_NAME}_base_pose_subscriber ${PROJECT_NAME}_generate_messages_cpp)
add_dependencies(${PROJECT_NAME}_base_pose_subscriber ${PROJECT_NAME}_generate_messages_py)

add_executable(${PROJECT_NAME}_target_pose_subscriber src/nodes/targetPoseSubscriberNode.cpp)
target_link_libraries(${PROJECT_NAME}_target_pose_subscriber
  ${catkin_LIBRARIES}
  ${PROJECT_NAME}_lib
)
add_dependencies(${PROJECT_NAME}_target_pose_subscriber ${PROJECT_NAME}_generate_messages_cpp)
add_dependencies(${PROJECT_NAME}_target_pose_subscriber ${PROJECT_NAME}_generate_messages_py)

add_executable(${PROJECT_NAME}_gtg_behavior src/nodes/goToGoalBehaviorNode.cpp)
target_link_libraries(${PROJECT_NAME}_gtg_behavior
  ${catkin_LIBRARIES}
  ${PROJECT_NAME}_lib
)
add_dependencies(${PROJECT_NAME}_gtg_behavior ${PROJECT_NAME}_generate_messages_cpp)
add_dependencies(${PROJECT_NAME}_gtg_behavior ${PROJECT_NAME}_generate_messages_py)

add_executable(${PROJECT_NAME}_grasp_behavior src/nodes/graspTargetBehaviorNode.cpp)
target_link_libraries(${PROJECT_NAME}_grasp_behavior
  ${catkin_LIBRARIES}
  ${PROJECT_NAME}_lib
)
add_dependencies(${PROJECT_NAME}_grasp_behavior ${PROJECT_NAME}_generate_messages_cpp)
add_dependencies(${PROJECT_NAME}_grasp_behavior ${PROJECT_NAME}_generate_messages_py)
