#!/usr/bin/env python

# Import modules
import argparse
import subprocess

# Set global variables
sleepTime = 2
statusFile = "/tmp/.confscreen.status"


# Parse arguments
parser = argparse.ArgumentParser(description='Configure screen setups wth Xrandr')
parser.add_argument('-1','--one', help='Configure LVDS and VGA-0 with --auto and external above laptop screen', required=False, action="store_true")
parser.add_argument('-2','--two', help='Configure LVDS with --auto and VGA-0  with 1024x768(needed for some projectors to work properly', required=False, action="store_true")
parser.add_argument('-3','--three', help='Configure screen mirroring on LVDS and VGA-0 with --auto', required=False, action='store_true')
parser.add_argument('-4','--four', help='Configure scereen mirroring on LVDS and HDMI-0 with --auto', required=False, action='store_true')
parser.add_argument('-5','--five', help='Configure multiple screens LVDS, DisplayPort-2 and VGA-0', required=False, action='store_true')
parser.add_argument('-6','--six', help='Configure latop LVDS screen only', required=False, action='store_true')
parser.add_argument('-s', '--show', help='Show Xrandr screen settings',required=False, action="store_true")
parser.add_argument('-v','--verbose', help='Show verbose debugging information', required=False, action="store_true")

args = parser.parse_args()



def confScreen(mode, showOnly=False):

    # Configure LVDS and VGA-0 with --auto and external above laptop screen
    if(mode==1) or (mode==7):
        desc="Screen 1: LVDS(auto) above VGA-0(auto)"

        if(showOnly==True):
            return desc

        if(args.verbose):
            print "Configuring " + desc

        subprocess.call('xrandr --output VGA-0 --off', shell=True)
        subprocess.call('xrandr --output LVDS --auto --primary --output VGA-0 --auto --above LVDS',shell=True)
        subprocess.call("sleep '%s'" % sleepTime, shell=True)
        subprocess.call('notify-send "Screen 1: LVDS(auto) above VGA-0(auto)"', shell=True)

        setStatus(mode)

    # Configure LVDS with --auto and VGA-0  with 1024x768(needed for some projectors to work properly
    if(mode==2):

        desc="Screen 2: LVDS(auto) above VGA-0(1024x768)"

        if(showOnly==True):
            return desc

        if(args.verbose):
            print "Configuring " + desc

        subprocess.call('xrandr --output VGA-0 --off',shell=True)
        subprocess.call('xrandr --output LVDS --auto --primary --output VGA-0 --mode "1024x768" --above LVDS',shell=True)
        subprocess.call('sleep %s' %  sleepTime, shell=True)
        subprocess.call('notify-send "Screen 2: LVDS(auto) above VGA-0(1024x768)"',shell=True)

        setStatus(mode)

    # Configure screen mirroring on LVDS and VGA-0 with --auto
    if(mode==3):
  
        desc="Screen 3: LVDS(auto) same-as VGA-0(auto)" 

        if(showOnly==True):
            return desc

        if(args.verbose):
            print "Configuring " + desc

        subprocess.call('xrandr --output VGA-0 --off',shell=True)
        subprocess.call('xrandr --output LVDS --auto --primary --output VGA-0 --auto --same-as LVDS',shell=True)
        subprocess.call('sleep %s' %  sleepTime, shell=True)
        subprocess.call('notify-send "Screen 3: LVDS(auto) same-as VGA-0(auto)"',shell=True)

        setStatus(mode)

    # Configure scereen mirroring on LVDS and HDMI-0 with --auto                
    if(mode==4):

        desc="Screen 4: LVDS(auto) same-as HDMI-0(auto)"

        if(showOnly==True):
            return desc

        if(args.verbose):
            print "Configuring " + desc

        subprocess.call('xrandr --output VGA-0 --off',shell=True)
        subprocess.call('xrandr --output HDMI-0 --off', shell=True)
        subprocess.call('xrandr --output LVDS --auto --primary --output HDMI-0 --auto --same-as LVDS',shell=True)
        subprocess.call('sleep %s' %  sleepTime, shell=True)
        subprocess.call('notify-send "Screen 4: LVDS(auto) same-as HDMI-0(auto)"',shell=True)
        
        setStatus(mode)

    # Configure multiple screens LVDS, DisplayPort-2 and VGA-0
    if(mode==5):

        desc="Screen 5: DisplayPort-2(auto) left-of LVDS(auto) right-of VGA-0(auto)"

        if(showOnly==True):
            return desc

        if(args.verbose):
            print "Configuring " + desc

        subprocess.call('xrandr --output VGA-0 --off',shell=True)
        subprocess.call('xrandr --output HDMI-0 --off', shell=True)
        subprocess.call('xrandr --output DisplayPort-2 --off', shell=True)
        subprocess.call('xrandr --output LVDS --auto --primary --output DisplayPort-2 --auto --left-of LVDS --output VGA-0 --auto --right-of LVDS',shell=True)
        subprocess.call('sleep %s' %  sleepTime, shell=True)
        subprocess.call('notify-send "Screen 5: DisplayPort-2(auto) left-of LVDS(auto) right-of VGA-0(auto)"',shell=True)

        setStatus(mode)

    # Configure LVDS(auto), no additional screens
    if(mode==6):

        desc="Screen 6: LVDS(auto)"

        if(showOnly==True):
            return desc

        if(args.verbose):
            print "Configuring " + desc

        subprocess.call('xrandr --output VGA-0 --off',shell=True)
        subprocess.call('xrandr --output HDMI-0 --off', shell=True)
        subprocess.call('xrandr --output DisplayPort-2 --off', shell=True)
        subprocess.call('xrandr --output LVDS --auto --primary',shell=True)
        subprocess.call('sleep %s' %  sleepTime, shell=True)
        subprocess.call('notify-send "Screen 6: LVDS(auto)"',shell=True)
   
        setStatus(mode)


def showModes():

    screen_modes="Available screen modes:\n"
    for s in range(1,7):
        screen_modes += "\n" + confScreen(s,showOnly=True)

    return screen_modes


def showScreen():

    if(args.verbose):
        print "Showing Screen Information:"
        subprocess.call('xrandr --current|grep " connected"', shell=True)

    # Read statusFile and change accordingly
    f = open (statusFile,"r")
    screenStatus = f.read()
    f.close()

    # Convert to Integer
    screenStatus = int(screenStatus)

    # Show the screen status 
    screenDesc=confScreen(mode=screenStatus, showOnly=True)
    screenDesc+= "\n\n" + showModes() 

    subprocess.call('notify-send "The Screen is configured as: %s "' % screenDesc ,shell=True)
    print "The Screen is configured for mode : %s" % screenDesc
    


def getStatus():
    """Get current status from statusFile and return it"""

    # Read statusFile and change accordingly
    f = open (statusFile,"r+")
    screenStatus = f.read()
    f.close()

    # Convert screenStatus to integer
    screenStatus=int(screenStatus)
    
    return screenStatus



def setStatus(screenStatus=0):
    """Set the status in the statusFile"""

    # Read statusFile and change accordingly
    f = open (statusFile,"r+")

    # Convert screenStatus to integer
    screenStatus=int(screenStatus)
    
    if(screenStatus>6):
        screenStatus=1

    # Convert screenStatus back to string
    screenStatus=str(screenStatus)

    # Write status to statusFile
    f.seek(0)
    f.write(screenStatus)
    f.truncate()
    f.close()
    if(args.verbose):
        print "The current Screen configuration stored in " + statusFile + " is " + screenStatus

    return screenStatus



# Begin parsing arguments and do stuff

if(args.one):
    confScreen(1,False)

elif(args.two):
    confScreen(mode=2,showOnly=False) 

elif(args.three):
    confScreen(mode=3,showOnly=False)

elif(args.four):
    confScreen(mode=4,showOnly=False)

elif(args.five):
    confScreen(mode=5,showOnly=False)

elif(args.six):
    confScreen(mode=6,showOnly=False)

elif(args.show):
    showScreen()

else:

    # Get the current status
    screenStatus=getStatus()
    
    # Configure the next screen mode
    confScreen(mode=screenStatus+1)
