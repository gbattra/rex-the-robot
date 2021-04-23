# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roborex: 7 messages, 4 services")

set(MSG_I_FLAGS "-Iroborex:/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roborex_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg" "roborex/JointState:geometry_msgs/Point"
)

get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg" ""
)

get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg" ""
)

get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg" "roborex/JointState:roborex/ArmPose:roborex/Trajectory:geometry_msgs/Point"
)

get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg" "roborex/JointState:roborex/ArmPose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg" ""
)

get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv" "roborex/JointState:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:roborex/JointState:roborex/ArmPose"
)

get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv" ""
)

get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv" NAME_WE)
add_custom_target(_roborex_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborex" "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:roborex/Trajectory:geometry_msgs/Point:roborex/JointState:roborex/ArmPose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)
_generate_msg_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)
_generate_msg_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)
_generate_msg_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)
_generate_msg_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)
_generate_msg_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)
_generate_msg_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)

### Generating Services
_generate_srv_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)
_generate_srv_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)
_generate_srv_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)
_generate_srv_cpp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
)

### Generating Module File
_generate_module_cpp(roborex
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roborex_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roborex_generate_messages roborex_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv" NAME_WE)
add_dependencies(roborex_generate_messages_cpp _roborex_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborex_gencpp)
add_dependencies(roborex_gencpp roborex_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborex_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)
_generate_msg_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)
_generate_msg_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)
_generate_msg_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)
_generate_msg_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)
_generate_msg_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)
_generate_msg_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)

### Generating Services
_generate_srv_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)
_generate_srv_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)
_generate_srv_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)
_generate_srv_eus(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
)

### Generating Module File
_generate_module_eus(roborex
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roborex_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roborex_generate_messages roborex_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv" NAME_WE)
add_dependencies(roborex_generate_messages_eus _roborex_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborex_geneus)
add_dependencies(roborex_geneus roborex_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborex_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)
_generate_msg_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)
_generate_msg_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)
_generate_msg_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)
_generate_msg_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)
_generate_msg_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)
_generate_msg_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)

### Generating Services
_generate_srv_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)
_generate_srv_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)
_generate_srv_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)
_generate_srv_lisp(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
)

### Generating Module File
_generate_module_lisp(roborex
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roborex_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roborex_generate_messages roborex_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv" NAME_WE)
add_dependencies(roborex_generate_messages_lisp _roborex_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborex_genlisp)
add_dependencies(roborex_genlisp roborex_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborex_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)
_generate_msg_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)
_generate_msg_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)
_generate_msg_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)
_generate_msg_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)
_generate_msg_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)
_generate_msg_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)

### Generating Services
_generate_srv_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)
_generate_srv_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)
_generate_srv_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)
_generate_srv_nodejs(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
)

### Generating Module File
_generate_module_nodejs(roborex
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roborex_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roborex_generate_messages roborex_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv" NAME_WE)
add_dependencies(roborex_generate_messages_nodejs _roborex_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborex_gennodejs)
add_dependencies(roborex_gennodejs roborex_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborex_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)
_generate_msg_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)
_generate_msg_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)
_generate_msg_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)
_generate_msg_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)
_generate_msg_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)
_generate_msg_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)

### Generating Services
_generate_srv_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv"
  "${MSG_I_FLAGS}"
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)
_generate_srv_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)
_generate_srv_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)
_generate_srv_py(roborex
  "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg;/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
)

### Generating Module File
_generate_module_py(roborex
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roborex_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roborex_generate_messages roborex_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv" NAME_WE)
add_dependencies(roborex_generate_messages_py _roborex_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborex_genpy)
add_dependencies(roborex_genpy roborex_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborex_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborex
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roborex_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(roborex_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborex
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roborex_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(roborex_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborex
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roborex_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(roborex_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborex
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roborex_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(roborex_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborex/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roborex_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(roborex_generate_messages_py geometry_msgs_generate_messages_py)
endif()
