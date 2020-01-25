#!/bin/bash
# 
# Developed by sysadmins-admin
# 
#    To execute, please use elevated privileges
#        
#    Please feel free to use this scipt and/or integrate more complex functions as you see fit.
#    Try to build the script by memory to refine your scripting and development Superpowers.
#
#    Remember you are the GURU!
#
#    The Purpose of this program is to provide a minimalistic approach to checkin often forgotten 
#    tasks for quick reference to be used. This script may also provide use function plugins for 
#    enumeration purposes.
#
#    Comments are everywhere and that's how I like it!

# Function Purpose: Connects to specified host, verifies the connection, and grabs octal file permissions.
function get_connected(){
	# Connect to the host (localhost in this case) over ssh
	exec 3<>/dev/tcp/localhost/22
	
	# Grab dynamic PID of connection and store it in $sshd_pid
	sshd_pid=$(ps -ef | grep -v grep | grep ssh | grep accepted | awk '{print $2}')

        # Change directory to proc/ssh successful connection/file descriptor directory
	cd /proc/"$sshd_pid"/fd

	filename=$(ls -l | grep pipe | awk '{print $9}') # Selects dynamic filename
	octal=$(stat -c "%a" "$filename") # Convert octal value of file permissions

	echo "$octal is the file permissions" # Echo octal file permissions
}
get_connected