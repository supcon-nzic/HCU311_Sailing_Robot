# -*- coding: utf-8 -*- 
import sys
import string
import time

#pwm_func_PATH ="/root/test_ws/src/test_ws/scripts"
pwm_func_PATH ="/root/HCU-311/sensor/src/test_ws/scripts"
if pwm_func_PATH not in sys.path:
	sys.path.append(pwm_func_PATH)

import sensor_dep.pwm_func as pwmf

pwmf.pwm_period_config(0,20000000)
pwmf.pwm_period_config(1,20000000)
pwmf.pwm_duty_cycle_config(0,1500000)
pwmf.pwm_duty_cycle_config(1,1500000)
pwmf.pwm_enable(0)
pwmf.pwm_enable(1)

if __name__ == '__main__':
	judge_mid = 1500000
	while True:
#		time.sleep(5)
		cap_period, cap_pwm = pwmf.pwm_capture(3)  
		if(cap_pwm>9000000):
			continue
		if(cap_period<15000000):
			continue        
		judge_flag = (cap_pwm>judge_mid)
		if not judge_flag:
			a,b = pwmf.pwm_capture(1)
			c,d = pwmf.pwm_capture(0)
			if(a > 15000000):
				if((b%10000)>9000):
					b=int(b/10000+1)*10000
				else:
					b=int(b/10000+1)*10000
				pwmf.pwm_duty_cycle_config(1,b) 
			#	print("rudder_PWM")
			#	print(b)
                                time.sleep(0.1)
			if(c > 15000000):
				if((d % 10000) > 9000):
					d=int(d/10000 + 1)*10000
				else:
					d=int(d/10000)*10000
				# d = 1000*input("sail_pwm = ")
                                #d = d/2
                                pwmf.pwm_duty_cycle_config(0,d)
			        print("sail_PWM")
				print(d)
                                time.sleep(0.1)
                time.sleep(0.03)
