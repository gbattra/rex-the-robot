# Install script for directory: /home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gattra/Projects/Unity/rex-the-robot/ROS/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/gattra/Projects/Unity/rex-the-robot/ROS/build/roborex/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roborex/msg" TYPE FILE FILES
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/ArmPose.msg"
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/BasePose.msg"
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Command.msg"
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/JointState.msg"
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectories.msg"
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/Trajectory.msg"
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/msg/TrajectoryStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roborex/srv" TYPE FILE FILES
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/ForwardKinematics.srv"
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/InverseKinematics.srv"
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/StartSystem.srv"
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/srv/TrajectoryPlanner.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roborex/cmake" TYPE FILE FILES "/home/gattra/Projects/Unity/rex-the-robot/ROS/build/roborex/catkin_generated/installspace/roborex-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/gattra/Projects/Unity/rex-the-robot/ROS/devel/include/roborex")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/gattra/Projects/Unity/rex-the-robot/ROS/devel/share/roseus/ros/roborex")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/gattra/Projects/Unity/rex-the-robot/ROS/devel/share/common-lisp/ros/roborex")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/gattra/Projects/Unity/rex-the-robot/ROS/devel/share/gennodejs/ros/roborex")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/gattra/Projects/Unity/rex-the-robot/ROS/devel/lib/python3/dist-packages/roborex")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/gattra/Projects/Unity/rex-the-robot/ROS/devel/lib/python3/dist-packages/roborex" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/gattra/Projects/Unity/rex-the-robot/ROS/devel/lib/python3/dist-packages/roborex" FILES_MATCHING REGEX "/home/gattra/Projects/Unity/rex-the-robot/ROS/devel/lib/python3/dist-packages/roborex/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gattra/Projects/Unity/rex-the-robot/ROS/build/roborex/catkin_generated/installspace/roborex.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roborex/cmake" TYPE FILE FILES "/home/gattra/Projects/Unity/rex-the-robot/ROS/build/roborex/catkin_generated/installspace/roborex-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roborex/cmake" TYPE FILE FILES
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/build/roborex/catkin_generated/installspace/roborexConfig.cmake"
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/build/roborex/catkin_generated/installspace/roborexConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roborex" TYPE FILE FILES "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/package.xml")
endif()

