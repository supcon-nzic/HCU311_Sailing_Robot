#!/usr/bin/python
# -*-coding: utf-8 -*-

import serial
import binascii
from datetime import datetime
import struct
import csv
from time import sleep
import sys 

serialPort4 = '/dev/ttyUSB0'  
baudRate4 = 9600  

#confugure JY901 send back bata
unlock_data = struct.pack('B',0xFF)
unlock_data = unlock_data + struct.pack('B',0xAA)
unlock_data = unlock_data + struct.pack('B',0x69)
unlock_data = unlock_data + struct.pack('B',0x88)
unlock_data = unlock_data + struct.pack('B',0xB5)
 
configure_data = struct.pack('B',0xFF)
configure_data = configure_data + struct.pack('B',0xAA)
configure_data = configure_data + struct.pack('B',0x02)
configure_data = configure_data + struct.pack('B',0x8A)
configure_data = configure_data + struct.pack('B',0x02)

#configure_data_list = ['0xFF','0xAA','0x02','0x8A','0x02']


direction_data = struct.pack('5B',0xFF,0xAA,0x23,0x01,0x00)  #direction = 1  configure jy901 vertical installation

confugure_calibration0 = struct.pack('5B',0xFF,0xAA,0x01,0x00,0x00)  #CALSW = 0    quit calibration mode

confugure_calibration1 = struct.pack('5B',0xFF,0xAA,0x01,0x01,0x00)  #CALSW = 1   enter accelerometer calibration mode

confugure_calibration2 = struct.pack('5B',0xFF,0xAA,0x01,0x02,0x00)  #CALSW = 2    enter field calibration mode


def configure_jy901():
    ser2 = serial.Serial(serialPort4, baudRate4)    #open usart5
    ser2.write(bytearray(unlock_data))
    sleep(0.1)
    ser2.write(bytearray(direction_data))
    sleep(0.1)
    ser2.write(bytearray(confugure_calibration1))
    print'enter accelerometer calibration mode,please hold still for 10 seconds'
    for i in range(11):
        if i != 10:
            sys.stdout.write("#")
        else:
            sys.stdout.write("# " + str(i*10)+"%/100%")
        sys.stdout.flush()
        sleep(1)
    print("\n" + " accelerometion calibration successful")
    ser2.write(bytearray(confugure_calibration0))
    sleep(0.1)

    ser2.write(bytearray(confugure_calibration2))
    print'enter field calibration mode,please rotate the module slowly around the x y z axis'
    for i in range(81):
        if i != 80:
            sys.stdout.write("#")
        else:
           sys.stdout.write("# " + str(i*1.25)+"%/100%")
        sys.stdout.flush()
        sleep(1)
    print("\n" + " field calibration successful")
    ser2.write(bytearray(confugure_calibration0))
    sleep(0.1)

    ser2.write(bytearray(configure_data))

    print('ok')
if __name__ == '__main__':
    configure_jy901()

           


