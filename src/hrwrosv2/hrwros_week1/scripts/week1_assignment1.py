#! /usr/bin/env python

# Assignment 1 for Week1: In this assignment you will subscribe to the topic that
# publishes sensor information. Then, you will transform the sensor reading from
# the reference frame of the sensor to compute the height of a box based on the
# illustration shown in the assignment document. Then, you will publish the box height
# on a new message type ONLY if the height of the box is more than 10cm.

# All necessary python imports go here.
import rospy
from hrwros_msgs.msg import SensorInformation # <write-your-code-here-Part3>
from hrwros_utilities.sim_sensor_data import distSensorData as getSensorData

CONSTANTE = 3.05 # Pies a centimetros

def sensor_info_callback(data):

    height_box = data.sensor_data.range*CONSTANTE
    # Compute the height of the box.
    # Boxes that are detected to be shorter than 10cm are due to sensor noise.
    # Do not publish information about them.
    if height_box<10:
        rospy.loginfo('Distance menor')
        pass
    else:
        # Declare a message object for publishing the box height information.
        box_height_info = height_box
        # Update height of box.
        #<write-your-code-here-Part3>
        # Publish box height using the publisher argument passed to the callback function.
    	rospy.loginfo('Distance reading from the sensor is: %f', box_height_info)

if __name__ == '__main__':
    # Initialize the ROS node here.
    rospy.init_node('compute_box_height', anonymous = False)

    # Wait for the topic that publishes sensor information to become available - Part1
    rospy.loginfo('Waiting for topic %s to be published...')
    #rospy.wait_for_message('<use the correct topic name here>', <use the correct message type here>)
    #rospy.loginfo('%s topic is now available!', <use the correct topic name here>)

    # Create the publisher for Part3 here
    bhi_publisher = rospy.Publisher('sensor_info', SensorInformation, queue_size=10)
    rate = rospy.Rate(10)
    sensor_info = SensorInformation()

# Fill in the header information.
    sensor_info.sensor_data.header.stamp = rospy.Time.now()
    sensor_info.sensor_data.header.frame_id = 'distance_sensor_frame'

    # Fill in the sensor data information.
    sensor_info.sensor_data.radiation_type = sensor_info.sensor_data.ULTRASOUND
    sensor_info.sensor_data.field_of_view = 0.5 # Field of view of the sensor in rad.
    sensor_info.sensor_data.min_range = 0.02 # Minimum distance range of the sensor in m.
    sensor_info.sensor_data.max_range = 2.0 # Maximum distance range of the sensor in m.

    # Fill in the manufacturer name and part number.
    sensor_info.maker_name = 'The Ultrasound Company'
    sensor_info.part_number = 123456


    # Read the sensor data from a simulated sensor.
    sensor_info.sensor_data.range = getSensorData(sensor_info.sensor_data.radiation_type, sensor_info.sensor_data.min_range, sensor_info.sensor_data.max_range)
    bhi_publisher.publish(sensor_info)
    rospy.loginfo("All went well. Publishing topic ")
    rate.sleep()
    # Note here that an ADDITIONAL ARGUMENT (bhi_publisher) is passed to the subscriber. This is a way to pass
    # ONE additional argument to the subscriber callback. If you want to pass multiple arguments,
    # you can use a python dictionary. And if you don't want to use multiple arguments to the
    # subscriber callback then you can also consider using a Class Implementation like we saw in
    # the action server code illustration.


    # Create the publisher for Part1 here
    rospy.Subscriber('sensor_info', SensorInformation, sensor_info_callback, bhi_publisher)

    # Prevent this code from exiting until Ctrl+C is pressed.
    rospy.spin()
