#!/usr/bin/python
# -*-coding: utf-8 -*-

import serial
import binascii
from datetime import datetime
import struct
import csv
from time import sleep
'''
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
'''

serialPort0 = '/dev/ttyPS0'  
baudRate0 = 9600  
is_exit=False
data_bytes=bytearray()

serialPort5 = '/dev/ttyS5'  
baudRate5 = 9600  

def uart0_to_uart5():
    ser1 = serial.Serial(serialPort0, baudRate0)    #open uast5
    ser2 = serial.Serial(serialPort5, baudRate5)    #open uast5
    print('ok')

    while(1):
        count = ser1.read(1000)
        #print('count'+str(count))
        #if count == '':
        #    continue
        #else:
        #    break
        #sleep(0.01)
        for i in count:
            print('0x%x'%ord(i))
            
        ser2.write(count)
if __name__ == '__main__':
    uart0_to_uart5()

           


