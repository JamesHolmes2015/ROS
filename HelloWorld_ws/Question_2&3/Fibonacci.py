#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32

rospy.init_node('publish_fibonacci')
pub= rospy.Publisher('fibonacci',Int32,queue_size=5)
rate=rospy.Rate(2)

count=1
temp1=1
temp2=0

while not rospy.is_shutdown():
	pub.publish(count)
	temp2 = temp1
	temp1 = count
	count = temp1 + temp2

	rate.sleep()
	


