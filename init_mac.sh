#!/bin/bash 

# 1. Enable SSH

echo "Enabling SSH"

sudo systemsetup -setremotelogin on

sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist


# 2. Change Names
MYHOST=$(hostname)
echo "I am Called $MYHOST"

# Add a Machine Id to hostname
# Sourced from sticker on Mac 

echo "*"
echo "**"

echo "***ATTENTION***" 
echo "ENTER LAST TWO DIGITS OF STICKER ON BOTTOM OF MACBOOK" 
read POST 
echo "Machine ID = $POST"
echo "***ATTENTION***" 
echo "**"
echo "*"

# Set HostName, LocalHostName, and ComputerName to  m2$POST
 
sudo scutil --set HostName m2$POST 
sudo scutil --set LocalHostName m2$POST 
sudo scutil --set ComputerName m2$POST

echo "Mac renamed to 'm2$POST'"



# 3. Install OCSI
sudo /usr/sbin/installer -pkg /Volumes/SANDISK/newmacs/ccb/ocspackage-ccb.pkg -target /
#Change filepath as appropriate



exit
 
