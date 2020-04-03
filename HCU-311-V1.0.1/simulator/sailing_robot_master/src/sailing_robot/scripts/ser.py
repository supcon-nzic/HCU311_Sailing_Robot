#!/usr/bin/python
# -*-coding: utf-8 -*-

import serial
import threading
import binascii
from datetime import datetime
import struct
import csv
import time
import rospy
from sensor_msgs.msg import NavSatFix
from std_msgs.msg import Float64, Float32
class SerialPort:
    def __init__(self, port, buand):
        self.port = serial.Serial(port, buand)
        self.port.close()
        if not self.port.isOpen():
            self.port.open()

    def port_open(self):
        if not self.port.isOpen():
            self.port.open()

    def port_close(self):
        self.port.close()

    def send_data(self):
        self.port.write('')

    def read_data(self):
        global is_exit
        global data_bytes
        while not is_exit:
            count = self.port.inWaiting()
            if count > 0:
                rec_str = self.port.read(count)
                data_bytes=data_bytes+rec_str
                # print(count)
                #print('当前数据接收总字节数：'+str(len(data_bytes))+' 本次接收字节数：'+str(len(rec_str)))
                #print(str(datetime.now()),':',binascii.b2a_hex(rec_str))


serialPort = '/dev/ttyACM0'  # 串口
baudRate = 9600  # 波特率
is_exit=False
data_bytes=bytearray()

if __name__ == '__main__':
    rospy.init_node("gps_sensor", anonymous=True)
    position_pub = rospy.Publisher('position', NavSatFix, queue_size=10)
    msg_position = NavSatFix()
    msg_position.latitude = 0
    msg_position.longitude = 0
    lat = 0
    lon = 0
    vx = 0
    vy = 0
    #打开串口
    mSerial = SerialPort(serialPort, baudRate)

    #开始数据读取线程
    t1 = threading.Thread(target=mSerial.read_data)
    t1.setDaemon(True)
    t1.start()
    
    while not rospy.is_shutdown():
        #主线程:对读取的串口数据进行处理
        data_len=len(data_bytes)
        i=0
        #print(data_len)
        while(i<data_len-30):
            if(data_bytes[i]==0xFE and data_bytes[i+3]==0x01 and data_bytes[i+4]==0x01 and data_bytes[i+5]==0x21):
                lat = struct.unpack('<i',data_bytes[i+10:i+14])[0]
                lon = struct.unpack('<i',data_bytes[i+14:i+18])[0]
                vx = struct.unpack('<h',data_bytes[i+24:i+26])[0]
                vy = struct.unpack('<h',data_bytes[i+26:i+28])[0]
                # z = struct.unpack('<f',data_bytes[i+18:i+22])[0]
                print(lat)
                print(lon)
                print(vx)
                print(vy)
                print("--------------------------------")
                i = i+30
            elif(data_bytes[i]==0xFD and data_bytes[i+5]==0x01 and data_bytes[i+6]==0x01 and data_bytes[i+7]==0x21):
                lat = struct.unpack('<i',data_bytes[i+14:i+18])[0]
                lon = struct.unpack('<i',data_bytes[i+18:i+22])[0]
                vx = struct.unpack('<h',data_bytes[i+28:i+30])[0]
                vy = struct.unpack('<h',data_bytes[i+30:i+32])[0]
                # z = struct.unpack('<f',data_bytes[i+18:i+22])[0]
                print(lat)
                print(lon)
                print(vx)
                print(vy)
                print("--------------------------------")
                i = i+34
            else:
                i=i+1
        msg_position.latitude = lat*1.0/10000000
        msg_position.longitude = lon*1.0/10000000
        # msg_position.latitude = 29.89877
        # msg_position.longitude = 121.527707
        position_pub.publish(msg_position)
        data_bytes[0:i]=b''
        time.sleep(0.1)
