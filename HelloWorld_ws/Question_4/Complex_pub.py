#!/usr/bin/env python
import rospy
from lab_3.msg import Complex

rospy.init_node("message_Publisher")
pub = rospy.Publisher('complex_message',Complex,queue_size = 5)
rate = rospy.Rate(2)

while not rospy.is_shutdown():
	msg=Complex()
	msg.real= 6
	msg.imaginary= 9
	pub.publish(msg)
	rate.sleep()
