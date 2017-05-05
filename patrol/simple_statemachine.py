#!/usr/bin/env python
import rospy
from smach import State,StateMachine
from time import sleep

class One(State):
    def __init__(self):
        State.__init__(self, outcomes=['success'])

    def execute(self, userdata):
        print 'Hello'
        sleep(1)
        return 'success'


class Two(State):
    def __init__(self):
        State.__init__(self, outcomes=['success'])

    def execute(self, userdata):
        print 'World'
        sleep(1)
        return 'success'


if __name__ == '__main__':

    sm = StateMachine(outcomes=['success'])
    with sm:
        StateMachine.add('ONE', One(), transitions={'success':'TWO'})
        StateMachine.add('TWO', Two(), transitions={'success':'ONE'})
        
    sm.execute()




