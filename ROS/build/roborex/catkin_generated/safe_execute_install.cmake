execute_process(COMMAND "/home/gattra/Projects/Unity/rex-the-robot/ROS/build/roborex/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/gattra/Projects/Unity/rex-the-robot/ROS/build/roborex/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
