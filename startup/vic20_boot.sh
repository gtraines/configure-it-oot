# edit the file /etc/rc.local 
# using the editor of your choice. 
# You must edit it with root permissions
# sudo nano /etc/rc.local

# In order to have a command or program run 
# when the Pi boots, you can add commands to the rc.local
# file. 
# This is especially useful if you want to power up your 
# Pi in headless mode and have it 
# run a program without configuration or a manual start

# If your program runs continuously you must be sure to fork 
# the process by adding an ampersand (“&”) to the end of the cmd
# Example: 
# sudo python /home/pi/sample.py &

# The Pi will run this program at bootup, 
# and before other services are started.  

# You can also get the script’s output and error written to 
# a text file (say log.txt) and use it to debug.
# Example:
# sudo python /home/pi/sample.py & > /home/pi/Desktop/log.txt 2>&1
