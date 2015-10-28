#!/bin/bash
#
# ChinaOpen 2013 sample start script for 3D soccer simulation
#
AGENT_BINARY="AHJZ3D"
BINARY_DIR="./"
NUM_PLAYERS=11
killall -11 "$AGENT_BINARY" &> /dev/null
for ((i=1;i<=$NUM_PLAYERS;i++)); do
echo "Running agent No. $i"
"$BINARY_DIR/$AGENT_BINARY" --host=$1 > /dev/null 2> /dev/null &
sleep 2
done

