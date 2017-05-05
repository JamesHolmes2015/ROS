#!/usr/bin/env python
import rospy
from smach import State,StateMachine
from time import sleep
from geometry_msgs.msg import Twist

rospy.init_node('Light')
move = rospy.Publisher('move', Twist, queue_size=1) 
stop = Twist()
go = Twist()
go.linear.x = 1 
stop.linear.x= 0.0


rate = rospy.Rate(10)

class One(State):
    def __init__(self):
        State.__init__(self, outcomes=['success'])

    def execute(self, userdata):
        print 'Hello'
	move.publish(go)
        sleep(2)
        return 'success'


class Two(State):
    def __init__(self):
        State.__init__(self, outcomes=['success'])

    def execute(self, userdata):
        print 'World'
	move.publish(stop)
        sleep(3)
        return 'success'


if __name__ == '__main__':

    sm = StateMachine(outcomes=['success'])
    with sm:
        StateMachine.add('ONE', One(), transitions={'success':'TWO'})
        StateMachine.add('TWO', Two(), transitions={'success':'ONE'})
        
    sm.execute()

