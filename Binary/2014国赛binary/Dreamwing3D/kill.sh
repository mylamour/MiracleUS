#!/bin/bash
#
# ChinaOpen 2012 sample kill script for 3D soccer simulation
#
killall -11 "Dreamwing3D"
killall -9 rcssserver3d 
&> /dev/null

