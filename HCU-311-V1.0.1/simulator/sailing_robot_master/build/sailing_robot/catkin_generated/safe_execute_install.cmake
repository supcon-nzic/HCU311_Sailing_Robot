execute_process(COMMAND "/home/yqz/HCU-311-V1.0.0/simulator/sailing_robot_master/build/sailing_robot/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/yqz/HCU-311-V1.0.0/simulator/sailing_robot_master/build/sailing_robot/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
