import serial

ser=serial.Serial('/dev/ttyS1',9600)
date=ser.read(600)
for i in date:

	print('0x%x'%ord(i))
ser.close()

