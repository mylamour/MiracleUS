#!/bin/bash
#
# Start Script for 3D Soccer Simulation
#

AGENT_BINARY="SZ"
BINARY_DIR="./"
NUM_PLAYERS=11

#killall -9 "$AGENT_BINARY" > /dev/null &

for ((i=1;i<=$NUM_PLAYERS;i++)); do
	echo "Running agent No. $i"
	"$BINARY_DIR/$AGENT_BINARY" --teamname=Hero3d --host=$1 > /dev/null 2> /dev/null &
	sleep 1
done
