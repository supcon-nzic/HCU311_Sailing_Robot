#!/usr/bin/env python
# -*- coding:utf-8 -*-
#

import rospy
import socket
import SocketServer
import json
import types
import string
import os
import time
from std_msgs.msg import String, Float64, Float32
from sensor_msgs.msg import NavSatFix
import serial
import threading
import binascii
import struct
import csv

# Port 0 means to select an arbitrary unused port
BUFFERSIZE = 1024
HOST, PORT = "192.168.137.100", 50001
address = (HOST, PORT)
is_exit = False


class ALINX_server():
    def __init__(self):
        global address
        global is_exit
        global BUFFERSIZE

        self.heading_sub = rospy.Subscriber('heading', Float32, self.update_heading)
        #self.position_sub = rospy.Subscriber('position', NavSatFix, self.update_position)
        #self.velocity_sub = rospy.Subscriber('velocity', Float64, self.update_velocity)
        self.wind_direction_apparent_sub = rospy.Subscriber('wind_direction_apparent', Float64, self.update_wind_direction_apparent)

        self.heading = Float32()
        #self.lati = Float64()
        #self.long = Float64()
        #self.velocity = Float64()
        self.wind_direction_apparent = Float64()
        i = 0

        self.rudder_pwm_pub = rospy.Publisher(
            'pwm_rudder', Float32, queue_size=10)
        self.sail_pwm_pub = rospy.Publisher('pwm_sail', Float32, queue_size=10)

        self.rate = rospy.Rate(10)

        server = socket.socket()
        server.bind(address)

        server.listen(5)
        print " .... waiting for connection"
        client, addr = server.accept()
        flag_hplch = True

        while not (is_exit and rospy.is_shutdown()):
            try:
                if not flag_hplch:
                    flag_hplch = True
                data = client.recv(BUFFERSIZE)
                jdata = json.loads(data)
                self.rudder_pwm = jdata['rudder_pwm']
                self.sail_pwm = jdata['sail_pwm']
                # print "rudder_pwm = %d, sailing_pwm = %d, timing = %s" % (self.rudder_pwm, self.sail_pwm, rospy.get_time())
                # response = {'latitude': 50.8889141, 'longitude': -1.383332, 'velocity': 5+i,
                #            'heading': 0, 'wind_direction_apparent': 180}
                i += 1
                response = {'heading':self.heading.data,'wind_direction_apparent':self.wind_direction_apparent.data}
                jresp = json.dumps(response)
                client.send(jresp)
                self.msgs_publisher()
                # print(i)
                # self.rate.sleep()
                # time.sleep(1)
            except BaseException:
                if flag_hplch:
                    print " .... waiting for connection again"
                    flag_hplch = False
                client, addr = server.accept()

        # client.close()
        # server.close()
    def update_heading(self, heading_msg):
        self.heading.data = heading_msg.data

    #def update_position(self, position_msg):
    #    self.lati.data = position_msg.latitude
    #    self.long.data = position_msg.longitude

    #def update_velocity(self, velocity_msg):
    #    self.velocity.data = velocity_msg.data

    def update_wind_direction_apparent(self, wind_direction_apparent_msg):
        self.wind_direction_apparent.data = wind_direction_apparent_msg.data
    def msgs_publisher(self):
        self.rudder_pwm_pub.publish(self.rudder_pwm*1000)
        self.sail_pwm_pub.publish(self.sail_pwm*1000)
        self.rate.sleep()


if __name__ == "__main__":
    try:
        rospy.init_node("ALINX_server", anonymous=True)
        ALINX_server()
    except rospy.ROSInterruptException:
        pass
