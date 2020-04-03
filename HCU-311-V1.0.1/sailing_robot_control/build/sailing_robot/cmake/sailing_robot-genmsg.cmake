# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sailing_robot: 3 messages, 0 services")

set(MSG_I_FLAGS "-Isailing_robot:/root/HCU-311/sailing_robot_control/src/sailing_robot/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sailing_robot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg" NAME_WE)
add_custom_target(_sailing_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sailing_robot" "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg" "sensor_msgs/NavSatStatus:sensor_msgs/NavSatFix:std_msgs/Header"
)

get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg" NAME_WE)
add_custom_target(_sailing_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sailing_robot" "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg" ""
)

get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg" NAME_WE)
add_custom_target(_sailing_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sailing_robot" "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sailing_robot
)
_generate_msg_cpp(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sailing_robot
)
_generate_msg_cpp(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sailing_robot
)

### Generating Services

### Generating Module File
_generate_module_cpp(sailing_robot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sailing_robot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sailing_robot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sailing_robot_generate_messages sailing_robot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_cpp _sailing_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_cpp _sailing_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_cpp _sailing_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sailing_robot_gencpp)
add_dependencies(sailing_robot_gencpp sailing_robot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sailing_robot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sailing_robot
)
_generate_msg_eus(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sailing_robot
)
_generate_msg_eus(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sailing_robot
)

### Generating Services

### Generating Module File
_generate_module_eus(sailing_robot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sailing_robot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sailing_robot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sailing_robot_generate_messages sailing_robot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_eus _sailing_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_eus _sailing_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_eus _sailing_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sailing_robot_geneus)
add_dependencies(sailing_robot_geneus sailing_robot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sailing_robot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sailing_robot
)
_generate_msg_lisp(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sailing_robot
)
_generate_msg_lisp(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sailing_robot
)

### Generating Services

### Generating Module File
_generate_module_lisp(sailing_robot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sailing_robot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sailing_robot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sailing_robot_generate_messages sailing_robot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_lisp _sailing_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_lisp _sailing_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_lisp _sailing_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sailing_robot_genlisp)
add_dependencies(sailing_robot_genlisp sailing_robot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sailing_robot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sailing_robot
)
_generate_msg_nodejs(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sailing_robot
)
_generate_msg_nodejs(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sailing_robot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sailing_robot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sailing_robot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sailing_robot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sailing_robot_generate_messages sailing_robot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_nodejs _sailing_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_nodejs _sailing_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_nodejs _sailing_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sailing_robot_gennodejs)
add_dependencies(sailing_robot_gennodejs sailing_robot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sailing_robot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sailing_robot
)
_generate_msg_py(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sailing_robot
)
_generate_msg_py(sailing_robot
  "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sailing_robot
)

### Generating Services

### Generating Module File
_generate_module_py(sailing_robot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sailing_robot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sailing_robot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sailing_robot_generate_messages sailing_robot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/gpswtime.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_py _sailing_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/Velocity.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_py _sailing_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/sailing_robot/msg/BatteryState.msg" NAME_WE)
add_dependencies(sailing_robot_generate_messages_py _sailing_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sailing_robot_genpy)
add_dependencies(sailing_robot_genpy sailing_robot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sailing_robot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sailing_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sailing_robot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sailing_robot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(sailing_robot_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sailing_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sailing_robot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sailing_robot_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(sailing_robot_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sailing_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sailing_robot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sailing_robot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(sailing_robot_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sailing_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sailing_robot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sailing_robot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(sailing_robot_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sailing_robot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sailing_robot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sailing_robot
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sailing_robot
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sailing_robot/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sailing_robot_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(sailing_robot_generate_messages_py sensor_msgs_generate_messages_py)
endif()
