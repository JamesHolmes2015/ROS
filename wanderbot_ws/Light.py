#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist

rospy.init_node('Light')
move = rospy.Publisher('move', Twist, queue_size=1) 

stop = Twist()
go = Twist()
go.linear.x = 0.5 
stop.linear.x= 0.0
Moving = False

light_change_time = rospy.Time.now()
rate = rospy.Rate(10)

while not rospy.is_shutdown():
  if Moving:
	move.publish(go) 
  else:
	move.publish(stop)
  if rospy.Time.now() > light_change_time: 
	Moving = not Moving
   	light_change_time = rospy.Time.now() + rospy.Duration(3)
  rate.sleep()
