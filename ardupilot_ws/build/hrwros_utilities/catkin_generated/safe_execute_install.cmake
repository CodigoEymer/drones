execute_process(COMMAND "/home/eymer/ardupilot_ws/build/hrwros_utilities/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/eymer/ardupilot_ws/build/hrwros_utilities/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
