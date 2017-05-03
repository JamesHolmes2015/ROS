#!/usr/bin/env python
import rospy
from std_msgs.msg import String


rospy.init_node('publish_world')
pub = rospy.Publisher('message_world',String,queue_size=10)
rate= rospy.Rate(2)

Message_to_send = 'World'

while not rospy.is_shutdown():
	pub.publish(Message_to_send)
	
	rate.sleep()
