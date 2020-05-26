# -*- coding: utf-8 -*- 
import sys
import string
import time


# pwm_func_PATH ="/root/HCU-311/sensor/src/test_ws/scripts"
# if pwm_func_PATH not in sys.path:
# 	sys.path.append(pwm_func_PATH)

# import sensor_dep.pwm_func as pwmf

def pwm_export(pwm_num):
	pwm_num = str(pwm_num)
	pwm = '/sys/class/pwm/pwmchip/export'
	pwm_dir = pwm[:22] + pwm_num + pwm[22:]
	#生成PWM波输出路径'/sys/class/pwm/pwmchip/export'
	file_export = open(pwm_dir,'w')
	file_export.write('0')
	file_export.close

def pwm_unexport(pwm_num):
	pwm_num = str(pwm_num)
	pwm = '/sys/class/pwm/pwmchip/unexport'
	pwm_dir = pwm[:22] + pwm_num + pwm[22:]
	#生成PWM波输入路径'/sys/class/pwm/unexport'
	file_unexport = open(pwm_dir,'w')
	file_unexport.write('0')
	file_unexport.close

def pwm_period_config(pwm_num, period):
	pwm_num = str(pwm_num)
	pwm = '/sys/class/pwm/pwmchip/pwm0/period'
	pwm_dir = pwm[:22] + pwm_num + pwm[22:]
	#生成PWM波周期设置路径'/sys/class/pwm/pwmchip/pwm0/period'
	file_period = open(pwm_dir,'w')
	pwm_period = str(period)
	file_period.write(pwm_period)
	file_period.close()

def pwm_duty_cycle_config(pwm_num, duty_cycle):
	pwm_num = str(pwm_num)
	pwm = '/sys/class/pwm/pwmchip/pwm0/duty_cycle'
	pwm_dir = pwm[:22] + pwm_num + pwm[22:]
	file_duty = open(pwm_dir,'w')
	pwm_duty_cycle = str(duty_cycle)
	file_duty.write(pwm_duty_cycle)
	file_duty.close()

def pwm_enable(pwm_num):
	pwm_num = str(pwm_num)
	pwm = '/sys/class/pwm/pwmchip/pwm0/enable'
	pwm_dir = pwm[:22] + pwm_num + pwm[22:]
	#生成PWM波开关路径'/sys/class/pwm/pwmchip/pwm0/enable'
	file_enable = open(pwm_dir,'w')
	pwm_enable = str("1")
	file_enable.write(pwm_enable)
	file_enable.close()

def pwm_capture(pwm_num):
	pwm_num = str(pwm_num)
	pwm = '/sys/class/pwm/pwmchip/pwm0/capture'
	pwm_dir = pwm[:22] + pwm_num + pwm[22:]
	file_capture = open(pwm_dir)
	pwm_capture = file_capture.read()
	period = pwm_capture.split(' ')[0]
	duty_cycle = pwm_capture.split(' ')[1]
	pwm_capture_period = int(period)
	pwm_capture_duty_cycle = int(duty_cycle)
	file_capture.close()
	
	return pwm_capture_period, pwm_capture_duty_cycle


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
