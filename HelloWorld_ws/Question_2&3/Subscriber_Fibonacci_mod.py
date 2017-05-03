#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32 





def callback(num_recived):
	print num_recived.data 


rospy.init_node('final_subscriber')


sub = rospy.Subscriber('fibonacci_(1/2)',Int32,callback)

rospy.spin()
