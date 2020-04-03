# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ball_detected: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iball_detected:/root/HCU-311/sailing_robot_control/src/ball_detected/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ball_detected_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg" NAME_WE)
add_custom_target(_ball_detected_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ball_detected" "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ball_detected
  "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ball_detected
)

### Generating Services

### Generating Module File
_generate_module_cpp(ball_detected
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ball_detected
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ball_detected_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ball_detected_generate_messages ball_detected_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg" NAME_WE)
add_dependencies(ball_detected_generate_messages_cpp _ball_detected_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ball_detected_gencpp)
add_dependencies(ball_detected_gencpp ball_detected_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ball_detected_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ball_detected
  "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ball_detected
)

### Generating Services

### Generating Module File
_generate_module_eus(ball_detected
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ball_detected
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ball_detected_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ball_detected_generate_messages ball_detected_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg" NAME_WE)
add_dependencies(ball_detected_generate_messages_eus _ball_detected_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ball_detected_geneus)
add_dependencies(ball_detected_geneus ball_detected_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ball_detected_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ball_detected
  "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ball_detected
)

### Generating Services

### Generating Module File
_generate_module_lisp(ball_detected
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ball_detected
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ball_detected_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ball_detected_generate_messages ball_detected_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg" NAME_WE)
add_dependencies(ball_detected_generate_messages_lisp _ball_detected_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ball_detected_genlisp)
add_dependencies(ball_detected_genlisp ball_detected_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ball_detected_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ball_detected
  "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ball_detected
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ball_detected
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ball_detected
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ball_detected_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ball_detected_generate_messages ball_detected_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg" NAME_WE)
add_dependencies(ball_detected_generate_messages_nodejs _ball_detected_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ball_detected_gennodejs)
add_dependencies(ball_detected_gennodejs ball_detected_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ball_detected_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ball_detected
  "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ball_detected
)

### Generating Services

### Generating Module File
_generate_module_py(ball_detected
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ball_detected
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ball_detected_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ball_detected_generate_messages ball_detected_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/HCU-311/sailing_robot_control/src/ball_detected/msg/image.msg" NAME_WE)
add_dependencies(ball_detected_generate_messages_py _ball_detected_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ball_detected_genpy)
add_dependencies(ball_detected_genpy ball_detected_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ball_detected_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ball_detected)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ball_detected
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ball_detected_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ball_detected)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ball_detected
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ball_detected_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ball_detected)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ball_detected
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ball_detected_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ball_detected)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ball_detected
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ball_detected_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ball_detected)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ball_detected\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ball_detected
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ball_detected_generate_messages_py std_msgs_generate_messages_py)
endif()
