#!/bin/bash
#
# Start Script for 3D Soccer Simulation
#

AGENT_BINARY="HS"
BINARY_DIR="./"
NUM_PLAYERS=7

#killall -9 "$AGENT_BINARY" > /dev/null &

for ((i=1;i<=$NUM_PLAYERS;i++)); do
	echo "Running agent No. $i"
	"$BINARY_DIR/$AGENT_BINARY" --host=$1 --unum=$i &> /dev/null &
	sleep 3
done
echo -e "\033[31m TESTING \033[0m"
