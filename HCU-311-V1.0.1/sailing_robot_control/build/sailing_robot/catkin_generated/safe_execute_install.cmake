execute_process(COMMAND "/root/HCU-311/sailing_robot_control/build/sailing_robot/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/root/HCU-311/sailing_robot_control/build/sailing_robot/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
