cmake_minimum_required(VERSION 2.8.3)
project(hrwros_msgs)
find_package(catkin REQUIRED COMPONENTS roscpp geometry_msgs std_msgs trajectory_msgs message_generation moveit_msgs actionlib actionlib_msgs)

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
add_message_files(DIRECTORY msg
  FILES
  ObjectDetection.msg
  TargetToolPoses.msg
  RobotTrajectories.msg
  SensorInformation.msg
  SensorEymerDos.msg 
)

## Generate messages in the 'srv' folder   /para agregar los servicios
add_service_files(DIRECTORY srv
  FILES
  ConvertMetresToFeet.srv
  SumaMult.srv
)

## Generate messages in the 'action' folder
add_action_files(DIRECTORY action
  FILES
  CounterWithDelay.action
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  trajectory_msgs
  moveit_msgs
  actionlib_msgs		#Necesaria para el uso de las acciones
)


###################################
## catkin specific configuration ##
###################################
catkin_package(
  CATKIN_DEPENDS  message_runtime roscpp geometry_msgs std_msgs trajectory_msgs moveit_msgs actionlib_msgs
)

###########
## Build ##
###########


#############
## Install ##
#############


#############
## Testing ##
#############
