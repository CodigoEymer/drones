# Install script for directory: /home/eymer/catkinQ/src/hrwrosv2/hrwros_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/eymer/catkinQ/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/msg" TYPE FILE FILES
    "/home/eymer/catkinQ/src/hrwrosv2/hrwros_msgs/msg/ObjectDetection.msg"
    "/home/eymer/catkinQ/src/hrwrosv2/hrwros_msgs/msg/TargetToolPoses.msg"
    "/home/eymer/catkinQ/src/hrwrosv2/hrwros_msgs/msg/RobotTrajectories.msg"
    "/home/eymer/catkinQ/src/hrwrosv2/hrwros_msgs/msg/SensorInformation.msg"
    "/home/eymer/catkinQ/src/hrwrosv2/hrwros_msgs/msg/SensorEymerDos.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/srv" TYPE FILE FILES
    "/home/eymer/catkinQ/src/hrwrosv2/hrwros_msgs/srv/ConvertMetresToFeet.srv"
    "/home/eymer/catkinQ/src/hrwrosv2/hrwros_msgs/srv/SumaMult.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/action" TYPE FILE FILES "/home/eymer/catkinQ/src/hrwrosv2/hrwros_msgs/action/CounterWithDelay.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/msg" TYPE FILE FILES
    "/home/eymer/catkinQ/devel/share/hrwros_msgs/msg/CounterWithDelayAction.msg"
    "/home/eymer/catkinQ/devel/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg"
    "/home/eymer/catkinQ/devel/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg"
    "/home/eymer/catkinQ/devel/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
    "/home/eymer/catkinQ/devel/share/hrwros_msgs/msg/CounterWithDelayGoal.msg"
    "/home/eymer/catkinQ/devel/share/hrwros_msgs/msg/CounterWithDelayResult.msg"
    "/home/eymer/catkinQ/devel/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/cmake" TYPE FILE FILES "/home/eymer/catkinQ/build/hrwrosv2/hrwros_msgs/catkin_generated/installspace/hrwros_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/eymer/catkinQ/devel/include/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/eymer/catkinQ/devel/share/roseus/ros/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/eymer/catkinQ/devel/share/common-lisp/ros/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/eymer/catkinQ/devel/share/gennodejs/ros/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/eymer/catkinQ/devel/lib/python2.7/dist-packages/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/eymer/catkinQ/devel/lib/python2.7/dist-packages/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/eymer/catkinQ/build/hrwrosv2/hrwros_msgs/catkin_generated/installspace/hrwros_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/cmake" TYPE FILE FILES "/home/eymer/catkinQ/build/hrwrosv2/hrwros_msgs/catkin_generated/installspace/hrwros_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/cmake" TYPE FILE FILES
    "/home/eymer/catkinQ/build/hrwrosv2/hrwros_msgs/catkin_generated/installspace/hrwros_msgsConfig.cmake"
    "/home/eymer/catkinQ/build/hrwrosv2/hrwros_msgs/catkin_generated/installspace/hrwros_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs" TYPE FILE FILES "/home/eymer/catkinQ/src/hrwrosv2/hrwros_msgs/package.xml")
endif()

