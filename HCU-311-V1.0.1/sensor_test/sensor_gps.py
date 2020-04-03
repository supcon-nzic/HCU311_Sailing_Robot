import serial

ser=serial.Serial('/dev/ttyPS1',9600)
date=ser.read(1000)
for i in date:

	print('0x%x'%ord(i))
ser.close()

