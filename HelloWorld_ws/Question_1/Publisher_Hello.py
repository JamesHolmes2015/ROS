#!/usr/bin/env python
import rospy
from std_msgs.msg import String


rospy.init_node('publish_hello')
pub = rospy.Publisher('message_hello',String,queue_size=10)
rate= rospy.Rate(2)

Message_to_send = 'Hello'

while not rospy.is_shutdown():
	pub.publish(Message_to_send)
	
	rate.sleep()
