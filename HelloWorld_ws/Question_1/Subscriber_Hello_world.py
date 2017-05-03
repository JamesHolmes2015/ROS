#!/usr/bin/env python
import rospy

from std_msgs.msg import String

def callback(message_recived):
	print 'I heard ' + message_recived.data 



rospy.init_node('listening_for_hello_world')

sub = rospy.Subscriber('message_hello',String,callback)
sub = rospy.Subscriber('message_world',String,callback)


rospy.spin()
