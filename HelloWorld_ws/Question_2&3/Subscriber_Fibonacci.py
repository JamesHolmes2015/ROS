#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32 

number=0

pub= rospy.Publisher('fibonacci_(1/2)',Int32,queue_size=5)

def callback(num_recived):
	print num_recived.data 
	number = num_recived.data/2
	pub.publish(number)

rospy.init_node('subscriber_and_publisher')


sub = rospy.Subscriber('fibonacci',Int32,callback)

rospy.spin()
