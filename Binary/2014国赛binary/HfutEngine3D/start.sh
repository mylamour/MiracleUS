#!/bin/bash
#
# Start Script for 3D Soccer Simulation
#

AGENT_BINARY="hfutengine"
BINARY_DIR="./"
NUM_PLAYERS=11

#killall -9 "$AGENT_BINARY" > /dev/null &

for ((i=1;i<=$NUM_PLAYERS;i++)); do
	echo "Running agent No. $i"
	"$BINARY_DIR/$AGENT_BINARY" --teamname=HfutEngine3D --unum=$i --host=$1 &> /dev/null &
	sleep 1
done
