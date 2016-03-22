#!/bin/bash

export USER=root
VNC_PORT=${VNC_PORT:-5901}
SEL_PORT=${SEL_PORT:-4444}
VNC_OPT="-rfbport ${VNC_PORT}"
SEL_PORT_OPT="-port ${SEL_PORT}"
vncserver :1 -geometry 1360x768 -depth 24 $VNC_OPT

cd /home/selenium
DISPLAY=:1 java -jar selenium-standalone.jar ${SEL_PORT_OPT} ${SEL_OPTS}
