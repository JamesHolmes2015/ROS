#!/usr/bin/env python
import rospy
from lab_3.msg import Complex

def callback(msg):
	print 'Real : ',msg.real
	print 'Imaginary : ',msg.imaginary

rospy.init_node('complex_sub')
sub = rospy.Subscriber('complex_message',Complex,callback)
rospy.spin()
