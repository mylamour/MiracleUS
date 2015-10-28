#!/bin/bash
#
# ChinaOpen 2013 sample start script for 3D soccer simulation
#
AGENT_BINARY=strive3d
BINARY_DIR="./"
NUM_PLAYERS=11
killall -9 $AGENT_BINARY &> /dev/null 
for ((i=1;i<=$NUM_PLAYERS;i++)); do
"$BINARY_DIR/$AGENT_BINARY" --host=$1 -u=$i > /dev/null 2> /dev/null &
echo "Running agent No. $i"
sleep 1
done

