#!/usr/bin/env python
# This code has been adapted from the ROS Wiki ROS Service tutorials to the context
# of this course.
# (http://wiki.ros.org/ROS/Tutorials/WritingServiceClient%28python%29)

from hrwros_msgs.srv import SumaMult, SumaMultRequest, SumaMultResponse
import rospy
import numpy as np

# Service callback function.
def process_service_request(req):

    # Instantiate the response message object.
    res = SumaMultResponse()
    res.suma = req.a+req.b
    res.mult = req.c*req.d

    for test_idx in range(0,2):
	print("ciclo for")
        rospy.sleep(1)

    #Return the response message.
    return res

def sumaMult_server():
    # ROS node for the service server.
    rospy.init_node('SumaMultServer', anonymous = False)

    # Create a ROS service type.(nombre del nodo, tipo de mensaje, funcion de llamada)
    service = rospy.Service('ServicioSumaMult', SumaMult, process_service_request)

    # Log message about service availability.
    rospy.loginfo('SumaMult esta disponible')
    rospy.spin()

if __name__ == "__main__":
    sumaMult_server()
