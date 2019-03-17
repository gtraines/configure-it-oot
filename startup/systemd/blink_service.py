from RPi import GPIO as gpio
import time

def main():
	gpio.setmode(gpio.BCM)
	gpio.setwarnings(False)
	gpio.setup(21, gpio.OUT)
	gpio.output(21, gpio.HIGH)

if __name__ == '__main__':
	main()
