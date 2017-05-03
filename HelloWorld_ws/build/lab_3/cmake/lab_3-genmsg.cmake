# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lab_3: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ilab_3:/home/u170457/HelloWorld_ws/src/lab_3/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lab_3_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/u170457/HelloWorld_ws/src/lab_3/msg/Complex.msg" NAME_WE)
add_custom_target(_lab_3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab_3" "/home/u170457/HelloWorld_ws/src/lab_3/msg/Complex.msg" ""
)

get_filename_component(_filename "/home/u170457/HelloWorld_ws/src/lab_3/srv/WordCount.srv" NAME_WE)
add_custom_target(_lab_3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab_3" "/home/u170457/HelloWorld_ws/src/lab_3/srv/WordCount.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lab_3
  "/home/u170457/HelloWorld_ws/src/lab_3/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab_3
)

### Generating Services
_generate_srv_cpp(lab_3
  "/home/u170457/HelloWorld_ws/src/lab_3/srv/WordCount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab_3
)

### Generating Module File
_generate_module_cpp(lab_3
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab_3
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lab_3_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lab_3_generate_messages lab_3_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/u170457/HelloWorld_ws/src/lab_3/msg/Complex.msg" NAME_WE)
add_dependencies(lab_3_generate_messages_cpp _lab_3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/u170457/HelloWorld_ws/src/lab_3/srv/WordCount.srv" NAME_WE)
add_dependencies(lab_3_generate_messages_cpp _lab_3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab_3_gencpp)
add_dependencies(lab_3_gencpp lab_3_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab_3_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lab_3
  "/home/u170457/HelloWorld_ws/src/lab_3/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab_3
)

### Generating Services
_generate_srv_lisp(lab_3
  "/home/u170457/HelloWorld_ws/src/lab_3/srv/WordCount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab_3
)

### Generating Module File
_generate_module_lisp(lab_3
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab_3
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lab_3_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lab_3_generate_messages lab_3_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/u170457/HelloWorld_ws/src/lab_3/msg/Complex.msg" NAME_WE)
add_dependencies(lab_3_generate_messages_lisp _lab_3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/u170457/HelloWorld_ws/src/lab_3/srv/WordCount.srv" NAME_WE)
add_dependencies(lab_3_generate_messages_lisp _lab_3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab_3_genlisp)
add_dependencies(lab_3_genlisp lab_3_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab_3_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lab_3
  "/home/u170457/HelloWorld_ws/src/lab_3/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab_3
)

### Generating Services
_generate_srv_py(lab_3
  "/home/u170457/HelloWorld_ws/src/lab_3/srv/WordCount.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab_3
)

### Generating Module File
_generate_module_py(lab_3
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab_3
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lab_3_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lab_3_generate_messages lab_3_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/u170457/HelloWorld_ws/src/lab_3/msg/Complex.msg" NAME_WE)
add_dependencies(lab_3_generate_messages_py _lab_3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/u170457/HelloWorld_ws/src/lab_3/srv/WordCount.srv" NAME_WE)
add_dependencies(lab_3_generate_messages_py _lab_3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab_3_genpy)
add_dependencies(lab_3_genpy lab_3_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab_3_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab_3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab_3
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(lab_3_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab_3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab_3
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(lab_3_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab_3)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab_3\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab_3
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(lab_3_generate_messages_py std_msgs_generate_messages_py)
