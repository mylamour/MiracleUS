#!/bin/bash
#
# ChinaOpen 2012 start script for 3D soccer simulation (PenaltyKick)
#

AGENT_BINARY="Icarus3D_2"
BINARY_DIR="./"

killall -9 "$AGENT_BINARY" &> /dev/null

"$BINARY_DIR/$AGENT_BINARY" --host $1 --unum 7 & > /dev/null
