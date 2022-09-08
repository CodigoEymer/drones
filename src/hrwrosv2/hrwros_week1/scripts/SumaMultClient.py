#!/usr/bin/env python
# This code has been adapted from the ROS Wiki ROS Service tutorials to the context
# of this course.
# (http://wiki.ros.org/ROS/Tutorials/WritingServiceClient%28python%29)

import sys
import rospy
from hrwros_msgs.srv import SumaMult, SumaMultRequest, SumaMultResponse

def ProcessSumaMult_client(pa,pb,pc,pd):
    # First wait for the service to become available.
    rospy.loginfo("Waiting for service...")
    rospy.wait_for_service('ServicioSumaMult')# metodo que realiza la espera
    try:
        # Create a service proxy. Utiliza como parametros el nombre del servicio y el nombre del tipo de mensaje
        ServicioSumaMult = rospy.ServiceProxy('ServicioSumaMult', SumaMult)

        # Call the service here.
        service_response = ServicioSumaMult(pa,pb,pc,pd)	# Permite obtener los parametros del servicio

        # Return the response to the calling function.
        return service_response

    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

if __name__ == "__main__":

    # Initialize the client ROS node.
    rospy.init_node("nodoSumaMult", anonymous = False)
    pa = 2
    pb = 3
    pc = 4
    pd = 5

    rospy.loginfo("a: %4.2f b: %4.2f c: %4.2f d: %4.2f"%(pa,pb,pc,pd))

    # Call the service client function.
    service_response = ProcessSumaMult_client(pa,pb,pc,pd)
    rospy.loginfo("Resultado suma %4.2f m to feet"%(service_response.suma))
    rospy.loginfo("Resultado mult %4.2f m to feet"%(service_response.mult))
    rospy.loginfo("Conversion successful!")
    
	
