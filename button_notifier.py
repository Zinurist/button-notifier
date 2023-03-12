import time
import subprocess

def button_callback():
    subprocess.Popen(["./notify.sh"])
    print("Notification sent")
    time.sleep(20)

from gpiozero import Button
from signal import pause
button = Button(17, pull_up=False, hold_time=0.1)
button.when_held = button_callback
pause()

#import RPi.GPIO as GPIO
#GPIO.setwarnings(False)
#GPIO.setmode(GPIO.BOARD)
#GPIO.setup(11, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
#GPIO.add_event_detect(11, GPIO.RISING, callback=button_callback)
#while 1:
#    time.sleep(10)
#GPIO.cleanup()
